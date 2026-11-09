# Goal mode

A goal is a bounded change in this repository, too large for one `/goal` run. Its plan is `docs/briefs/<slug>-plan.md`, its slices are
`docs/briefs/<slug>-NN-goal.md`, and each brief's Outcome is its evidence record: no separate status log.

## Questions

- The outcome in one sentence, and how the user will judge it done.
- The reference to compare against: a spec, issue, design, existing feature or upstream document, named and fetchable.
- What is out of scope.
- Decision authority: delegate blocking decisions, or ask.
- Systems that must not be touched and integrations to fake.

## Cutting slices

- Slice 01 is a tracer bullet: the thinnest end-to-end path the full check can prove. Later slices widen it.
- One user-visible behaviour or one layer per slice; each ends green and committable.
- Two to eight slices. More means a migration-sized ask: use the [migration roadmap](MIGRATION.md#roadmap-skeleton) with milestones and
  without the parity parts.

## Layout

`docs/briefs/<slug>-plan.md`:

```markdown
# <Title> plan

Next: <SLUG>-01 — <one line>

## Ask

<the user's ask, verbatim>

## Reference

<named, fetchable, compared directly>

## Decisions

- <decision> (approved by the user | approved by delegation: <reason>)

## Slices

| ID | Slice | Depends on | Brief | Status |
|---|---|---|---|---|
| <SLUG>-01 | <one line> | — | [brief](<slug>-01-goal.md) | open |
| <SLUG>-02 | <one line> | <SLUG>-01 | — | open |

## Done when

1. <final check for the whole goal> — Check: <command>. Pass: <condition>.
```

The last slice's acceptance checklist includes Done when. Each slice's closing item links its brief, sets its row to `done (<date>)` and moves `Next:`.

`AGENTS.md` gets one line, removed when `Next:` becomes `none`:

```markdown
Active plan: `docs/briefs/<slug>-plan.md` (resume with `/skill:next-slice`).
```
