---
url: https://modernuo.com/docs/development/timers
title: Timers | ModernUO
words: 1013
---
- [](/)
- Content Development
- Timers

On this page

# Timers

ModernUO uses a hierarchical timer wheel for scheduling delayed and recurring actions. The system is single-threaded, lock-free, and processes timers during each game loop tick.

* * *

## Overview[​](#overview "Direct link to Overview")

The timer wheel has 3 layers with 4,096 slots each:

|Layer|Resolution|Range|
|---|---|---|
|0|8ms|~32.8 seconds|
|1|~32.8s|~22 minutes|
|2|~22m|~16 days|

Key characteristics:

- **O(1) insert and remove** -- adding thousands of timers does not slow the server.
- **No locks** -- the entire system runs on the main game thread.
- **No `TimerPriority`** -- this concept from RunUO is removed entirely.
- **8ms minimum precision** -- all delays round up to the nearest 8ms boundary.

* * *

## Timer.StartTimer (Preferred)[​](#timerstarttimer-preferred "Direct link to Timer.StartTimer (Preferred)")

The primary API for creating timers. Timers are automatically pooled for reuse.

### Immediate Execution[​](#immediate-execution "Direct link to Immediate Execution")

```csharp
Timer.StartTimer(callback);
```

### Delayed Execution[​](#delayed-execution "Direct link to Delayed Execution")

```csharp
Timer.StartTimer(TimeSpan.FromSeconds(5), callback);
```

### Repeating[​](#repeating "Direct link to Repeating")

```csharp
// Repeat every second, starting after 1 second
Timer.StartTimer(TimeSpan.FromSeconds(1), TimeSpan.FromSeconds(1), callback);
```

### Repeating with Count Limit[​](#repeating-with-count-limit "Direct link to Repeating with Count Limit")

```csharp
// Execute 10 times, once per second, starting immediately
Timer.StartTimer(TimeSpan.FromSeconds(0), TimeSpan.FromSeconds(1), 10, callback);
```

### Delayed Start, Then Repeating[​](#delayed-start-then-repeating "Direct link to Delayed Start, Then Repeating")

```csharp
// Wait 5 seconds, then repeat every second
Timer.StartTimer(TimeSpan.FromSeconds(5), TimeSpan.FromSeconds(1), callback);
```

* * *

## Cancellation with TimerExecutionToken[​](#cancellation-with-timerexecutiontoken "Direct link to Cancellation with TimerExecutionToken")

When you need to cancel a timer later, pass an `out` token:

```csharp
private TimerExecutionToken _token;

// Start a cancellable repeating timer
Timer.StartTimer(
    TimeSpan.FromSeconds(5),
    TimeSpan.FromSeconds(5),
    DoWork,
    out _token
);

// Cancel the timer (safe to call multiple times)
_token.Cancel();
```

### Token Properties[​](#token-properties "Direct link to Token Properties")

|Property|Type|Description|
|---|---|---|
|`Running`|`bool`|Whether the timer is still active|
|`RemainingCount`|`int`|Ticks remaining (`int.MaxValue` if infinite)|
|`Next`|`DateTime`|When the next tick fires|
|`Index`|`int`|How many times `OnTick` has fired so far|

### Lifecycle Pattern[​](#lifecycle-pattern "Direct link to Lifecycle Pattern")

Always cancel tokens when the owning entity is deleted:

```csharp
private TimerExecutionToken _checkTimer;

[Constructible]
public MyItem() : base(0x1234)
{
    Timer.StartTimer(TimeSpan.FromSeconds(5), TimeSpan.FromSeconds(5), Check, out _checkTimer);
}

public override void OnAfterDelete()
{
    _checkTimer.Cancel();
    base.OnAfterDelete();
}
```

warning

`TimerExecutionToken` is **not serializable**. Never add `[SerializableField]` to a token. Restore timers in `[AfterDeserialization]` instead.

* * *

## Timer.DelayCall (Legacy)[​](#timerdelaycall-legacy "Direct link to Timer.DelayCall (Legacy)")

Returns a `Timer` object directly. Useful when you need state parameters to avoid lambda allocation:

```csharp
// Basic delay call
var timer = Timer.DelayCall(TimeSpan.FromSeconds(5), DoWork);
timer.Stop(); // Cancel

// With state parameters (no closure allocation)
Timer.DelayCall(TimeSpan.FromSeconds(2), ProcessTarget, mobile, item);

// Supports up to 5 state parameters
Timer.DelayCall(TimeSpan.FromSeconds(1), DoWork, arg1, arg2, arg3);
```

### When to Use DelayCall[​](#when-to-use-delaycall "Direct link to When to Use DelayCall")

Prefer `Timer.StartTimer` for most cases. Use `Timer.DelayCall` when:

- You need to pass state parameters to avoid lambda/closure allocation on hot paths.
- You need the `Timer` object reference for advanced control.

* * *

## Timer Restoration After Deserialization[​](#timer-restoration-after-deserialization "Direct link to Timer Restoration After Deserialization")

Timers do not survive server restarts. Save the relevant timing data as a serialized field, then restart the timer after the world loads.

### Pattern: Save Expiration Time[​](#pattern-save-expiration-time "Direct link to Pattern: Save Expiration Time")

```csharp
[SerializationGenerator(0)]
public partial class TimedItem : Item
{
    private TimerExecutionToken _timer; // NOT serialized

    [SerializableField(0)]
    [DeltaDateTime]
    private DateTime _expireTime;

    [Constructible]
    public TimedItem() : base(0x1234)
    {
        _expireTime = Core.Now + TimeSpan.FromHours(1);
        StartTimer();
    }

    private void StartTimer()
    {
        Timer.StartTimer(TimeSpan.FromMinutes(1), TimeSpan.FromMinutes(1), Check, out _timer);
    }

    [AfterDeserialization]
    private void AfterDeserialization() => StartTimer();

    public override void OnAfterDelete()
    {
        _timer.Cancel();
        base.OnAfterDelete();
    }

    private void Check()
    {
        if (Core.Now >= _expireTime)
        {
            Delete();
        }
    }
}
```

Key points:

- **`[DeltaDateTime]`** stores the time as an offset from `Core.Now`, so it adjusts correctly if the server is down for a while.
- **`[AfterDeserialization]`** runs after the entity's fields are loaded -- this is where you restart timers.
- The `TimerExecutionToken` field has no serialization attribute.

### Pattern: Timer Field with DeserializeTimerField[​](#pattern-timer-field-with-deserializetimerfield "Direct link to Pattern: Timer Field with DeserializeTimerField")

For `Timer` objects (not tokens), use `[DeserializeTimerField]`:

```csharp
[SerializableField(0, setter: "private")]
private Timer _decayTimer;

[DeserializeTimerField(0)]
private void DeserializeDecayTimer(TimeSpan delay)
{
    _decayTimer = Timer.DelayCall(delay, Delete);
    _decayTimer.Start();
}

public override void OnAfterDelete()
{
    _decayTimer?.Stop();
    _decayTimer = null;
    base.OnAfterDelete();
}
```

The serialization system saves the remaining delay and passes it to your deserialize method.

* * *

## Common Mistakes[​](#common-mistakes "Direct link to Common Mistakes")

|Mistake|Problem|Fix|
|---|---|---|
|Adding `[SerializableField]` to `TimerExecutionToken`|Build error or data corruption|Leave unserialized; use `[AfterDeserialization]` to restart|
|Not cancelling timer on delete|Timer fires on a deleted entity, causing errors|Cancel in `OnAfterDelete()`|
|Using `Thread.Sleep`|Blocks the entire game loop|Use `await Timer.Pause()`|
|Creating timer inside deserialization|Timer starts before the world is fully loaded|Use `[AfterDeserialization]`|
|Lambda capturing state in hot-path timer|Allocates a closure object every invocation|Use `Timer.DelayCall` with state parameters|

### Avoiding Lambda Allocation[​](#avoiding-lambda-allocation "Direct link to Avoiding Lambda Allocation")

```csharp
// BAD on hot paths -- allocates a closure each time
Timer.StartTimer(TimeSpan.FromSeconds(2), () => ProcessTarget(from, target));

// GOOD -- state parameters, no allocation
Timer.DelayCall(TimeSpan.FromSeconds(2), ProcessTarget, from, target);

private static void ProcessTarget(Mobile from, Mobile target)
{
    // Process...
}
```

* * *

## Quick Reference[​](#quick-reference "Direct link to Quick Reference")

### Fire-and-Forget[​](#fire-and-forget "Direct link to Fire-and-Forget")

```csharp
// One-shot after 10 seconds
Timer.StartTimer(TimeSpan.FromSeconds(10), Delete);
```

### Cancellable Repeating Timer[​](#cancellable-repeating-timer "Direct link to Cancellable Repeating Timer")

```csharp
private TimerExecutionToken _token;

Timer.StartTimer(TimeSpan.FromSeconds(5), TimeSpan.FromSeconds(5), Tick, out _token);

// Later:
_token.Cancel();
```

### Awaitable Pause[​](#awaitable-pause "Direct link to Awaitable Pause")

```csharp
await Timer.Pause(TimeSpan.FromMilliseconds(100));
await Timer.Pause(500); // Milliseconds overload
```

This is safe because `EventLoopContext` routes continuations back to the main thread.

[Edit this page](https://github.com/modernuo/ModernUO/tree/main/website/content/development/timers.mdx)

[Previous
\
Serialization](/docs/development/serialization)

[Next
\
Commands & Targeting](/docs/development/commands-and-targeting)

- [Overview](#overview)
- [Timer.StartTimer (Preferred)](#timerstarttimer-preferred)

  - [Immediate Execution](#immediate-execution)
  - [Delayed Execution](#delayed-execution)
  - [Repeating](#repeating)
  - [Repeating with Count Limit](#repeating-with-count-limit)
  - [Delayed Start, Then Repeating](#delayed-start-then-repeating)
- [Cancellation with TimerExecutionToken](#cancellation-with-timerexecutiontoken)

  - [Token Properties](#token-properties)
  - [Lifecycle Pattern](#lifecycle-pattern)
- [Timer.DelayCall (Legacy)](#timerdelaycall-legacy)

  - [When to Use DelayCall](#when-to-use-delaycall)
- [Timer Restoration After Deserialization](#timer-restoration-after-deserialization)

  - [Pattern: Save Expiration Time](#pattern-save-expiration-time)
  - [Pattern: Timer Field with DeserializeTimerField](#pattern-timer-field-with-deserializetimerfield)
- [Common Mistakes](#common-mistakes)

  - [Avoiding Lambda Allocation](#avoiding-lambda-allocation)
- [Quick Reference](#quick-reference)

  - [Fire-and-Forget](#fire-and-forget)
  - [Cancellable Repeating Timer](#cancellable-repeating-timer)
  - [Awaitable Pause](#awaitable-pause)
