---
url: https://pathofachra.wiki.gg/wiki/Events
title: Events - Path of Achra Wiki
words: 2309
---
The core mechanic that everything revolves around in Path of Achra is Events. With the exception of your turn actions, there are no active abilities in the game; everything is instead triggered by a certain event occurring. Building a strong character involves selecting powers and wielding items that synergise with each other by interacting with these events. Most are fairly self-explanatory, however some are a bit more complex and invite a more detailed explanation.

Contents

- 1 How Events Work
- 2 Types of Events
  
  - 2.1 Turn Actions
  - 2.2 Attack, Hit and Damage
    
    - 2.2.1 Attack
    - 2.2.2 Hit
    - 2.2.3 Damage
    - 2.2.4 The Attack Sequence
  - 2.3 Defensive Events
  - 2.4 Death Events
  - 2.5 Other Events
  - 2.6 Conditionals
    
    - 2.6.1 Two-handing/Single-handing
    - 2.6.2 Encumbered/Unencumbered
    - 2.6.3 Inflexible/Flexible
    - 2.6.4 Bare Fist
  - 2.7 Game Turn

How Events Work

Almost all abilities in Path of Achra follow the same pattern: on something happening -&gt; do something. The 'somethings' in this case refer to events, actions that occur in the game that can trigger your abilities. Whenever an event happens the game will check for any ability (your or you enemy's) that trigger on that event, and if they do, execute that ability. Triggered abilities can also themselves create more events, potentially leading to massive chain reactions as abilities trigger off of each other, in fact this is usually the primary way of creating the most powerful builds.

It should be noted that while it is possible to create very long and elaborate chains of events, there is almost no way to go 'infinite' by creating a loop of events that trigger off each other and never ends. Having said that, there are plenty of ways to create builds that will keep creating events as long as enemies live, only stopping when everything is dead, if you can figure out how to make them!

Types of Events

There are a huge variety of possible events in Path of Achra and not all of them are listed here, but most are fairly self-explanatory once you understand the core mechanics of the game. The most common ones are listed below, along with a few outliers that aren't obvious as to what they mean.

Turn Actions

The most basic events are the ones that you as the player can create. When it is your turn to act you can do one of four things: attack, step, pray or stand still.

- Attack: Performs an initial attack against one target within your weapon's range.
- Step: Move to an adjacent tile.
- Pray: Use one of the three prayers your Religion grants you.
- Stand Still: Do nothing.

Attack, Hit and Damage

The primary offensive mechanics available to all characters, attacks and hits refer to the attack action and the hit generated upon an attack successfully overcoming the defences of the target. The most common attack and hit related events are listed here, but there are dozens of variations that may require different targets, or positions the target is in relation to the player, or the type of weapon equipped etc...

Attack

Attack refers to, perhaps obviously, the action of attacking another unit. The most common way of doing this is for the player being to take the attack action on their turn, however there are ways of generating more attacks that trigger on other events, such as killing an enemy, being attacked or even divine intervention. This is where we come to a distinction between 'initial' and 'extra' attacks. Initial attack specifically refers to the attack that results from taking the attack turn action, done by clicking on an enemy within your weapon's range, or with the appropriate input on your keyboard. If you have more than one weapon equipped, both will perform an initial attack provided the target is also within your Off-hand weapon's range. If you have a weapon with the area attack ability, then the attack made to every enemy in range will be an initial attack. All attacks that are generated through other events and abilities are extra attacks. Unless specified in the ability generating the extra attack, they will always be made with your Main-hand weapon, which will inherit your Accuracy and Hit stats as with a normal attack.

Attack related event examples:

- On attack: Any attack event performed by the player.
- On attacking an enemy/ally: Any attack event where the target matches the required target of the ability.
- On ally attack (an enemy): Any attack event performed by an ally (that targets an enemy).
- On initial attack: An attack event performed by the player specifically from an attack turn action.
- On adjacent/non-adjacent attack/within range: An attack action performed by the player where the target meets the position requirement.
- On being attacked: Any attack event from an enemy where the player is the target.
- On ally being attacked: Any attack event from an enemy where an ally is the target.

Hit

Not to be confused with the stat Hit, a hit refers to either an attack that has overcome the target's defences and will therefore deal damage, or a direct 'free' hit granted by another ability. For a full explanation of the former see The Attack Sequence below. The latter type of hits can be created by other abilities and usually have a fixed damage amount and type. Where the type of a direct hit is not specified, it will be the same type as your Main-hand weapon. These direct hits bypass the normal defences a unit has, including Dodge, Block and Armor, and can only be modified by abilities that would apply at the damage calculation step.

Hit-related event examples:

- On hit: Any hit event performed by the player, including those that result from successful attacks and direct hits from abilities.
- On hitting an enemy/ally: As on hit, but where the target matches the required target of the ability.
- On ally hitting (an enemy): Any hit event performed by an ally (that targets an enemy).
- On adjacent/non-adjacent hit: A hit performed by the player where the target meets the position requirement.
- On being hit: Any hit event from an enemy where the player is the target.
- On ally being hit: Any hit event from an enemy where an ally is the target.

Damage

A damage event refers to an entity, either the player, an ally or an enemy dealing damage by any means. This includes damage dealt by status effects, such as Scorch or Sickness. It is important to note that the damage dealt by the player's allies does not activate the player's damage-related events; the same is true for damage dealt by status effects inflicted by allies. Damage is affected by the target's resistances; positive resistances lower the damage whereas negative ones increase it. Damage that does not come from attacks bypasses the target's Dodge, Block and Armor.

Damage-related event examples:

- On dealing type damage: Any damage of the specified type(s) dealt by this unit to any target.
- On dealing damage to an ally: Any damage dealt by the player to allies.
- On being dealt damage: Any damage, possibly of a specified element, taken from any source, including self-damage.
- On being dealt damage by enemies: The same as above, but only from damage dealt by enemies.

Self-damage is a somewhat special clause; any damage where the target and the source are the same counts as self-damage. Self-damage cannot be increased or lowered through any means like Willpower or status effects and is not affected by resistances.

Self-damage related event examples:

- On dealing type damage to yourself: Self-damage of the given type(s).
- On dealing self-damage: The same as above, but regardless of type.

The Attack Sequence

The above events trigger in a set order upon every attack action; this is known as the attack sequence. Chronologically after an attack was triggered by either player action or another event, the sequence plays out as follows.

1. Initial/extra attack: If the attack was initial, trigger all 'on initial attack' events. Regardless of whether it was initial or not, trigger all 'on attack' events. Trigger the target's 'on being attacked' events.
2. Dodge check: The target's Dodge is rolled against the attacker's Accuracy. If the target dodges successfully, trigger its 'on dodge' events and end the sequence. Otherwise, continue.
3. Block check: The target's Block is rolled against the attacker's Hit. If the target fully negates the attack, trigger its 'on block' events and end the sequence. Otherwise, continue.
4. Armor check: The target's Armor is rolled against the attacker's Hit. If the target fully negates the attack, trigger its 'on shrug off' events and end the sequence. Otherwise, continue.
5. Hit: Trigger the attacker's 'on hit' events. Trigger the target's 'on being hit' events.
6. Damage: The target suffers damage. If any, trigger the attacker's 'on dealing damage' and the target's 'on being dealt damage' events.

For more information on how defensive stats affect the attack's damage, refer to the Stats page.

Defensive Events

- On shrug off: An attack is negated by the target's Armor.
- On block: An attack is negated by the target's Block.
- On dodge: An attack is prevented by the target's Dodge.
- On adjacent shrug off/block/dodge: The same as above, if the attacker is adjacent to the target.

Death Events

Death events trigger whenever one of the units on a level dies. For a kill event to trigger, the unit must have dealt the finishing blow.

- On kill: A unit kills another unit, regardless of whether it is an enemy or an ally.
- On killing an enemy: The same as above, but only if an enemy is killed.
- On enemy death: An enemy dies, regardless of cause.
- On ally death: An allied unit dies, regardless of cause; for the player, it triggers whenever their allies die, for enemies, it triggers whenever other enemies die.
- On death: This unit dies.

Other Events

- On entrance: The player enters a new level for the first time.
- On stand still: The player skips their action. AI-controlled units cannot trigger stand still events even when they do nothing.
- On teleport: The player teleports or is teleported by any means.
- On any unit teleport: Any unit, including the player, teleports or is teleported by any means.
- On step: The unit moves into an adjacent tile.
- On a unit stepping adjacent to you/into an adjacent tile: A unit moves into a tile adjacent to this unit.
- On prayer: The player recites one of the three prayers granted by their religion.
- On heal: The player regains Life through any means. This will not trigger if no Life was restored since the player is already as maximum Life.
- On apply status effect: Any single instance of the specified effect being applied. The amount of the effect applied does not matter for this; only the number of separate instances.
- On summon: An ally is summoned by the player. This will not trigger if the summoning fails due to exceeding the Willpower limit.
- On learn: On gaining or leveling up this power/prestige class.
- On Glory rising: The player's Glory rises.
- On picking up an item: An item (possibly of a specified type) is picked up by the player.
- On transforming an item: An item was picked up by the player and transfromed by the Goddess Oros.

Conditionals

[](/wiki/File:Invscreen.png)

[](/wiki/File:Invscreen.png "Enlarge")

You can see your status for the purpose of satisfying some of the conditionals in the top part of the inventory screen

Some events trigger only if a certain condition is met. Such conditions use the 'if' keyword.

Two-handing/Single-handing

Some events require the player to be two-handing or single-handing to activate. Two-handing means that the player only has one weapon equipped in the Main hand, whereas the Offhand is empty. When two-handing, the Offhand will not be used during initial attack and its stats on the inventory screen will be dashed; it will also not count as a Bare Fist. Single-handing requires the player to wield two weapons, one weapon in the Offhand with an empty Main hand, or having both hands empty.

Encumbered/Unencumbered

If your Encumbrance is higher than your Strength, you are Encumbered. If your Encumbrance is lower or equal to your Strength, you are Unencumbered.

Inflexible/Flexible

If your Inflexibility is higher than 1, you are Inflexible. If it is equal to 1, you are Flexible.

Bare Fist

Each hand and that has no weapon equipped counts as a Bare Fist; some weapons, such as the Zasadzka Claw, are also considered Bare Fists. When two-handing, the empty Offhand will not be considered a Bare Fist. Events that are worded as 'on hit, if bare fist', trigger as long as your Main hand is a Bare Fist, for any hits that you deal, including those not caused by attacks.

Game Turn

A game turn is an absolute unit of time that progresses as the player takes actions relative to their Speed. Once a single game turn passes, all 'on game turn' events on all units on the level are activated.

A game turn progresses at the speed of 5; this effectively means that a unit with a Speed of 5 can make a single action per game turn, whereas a unit with 10 Speed can make two, and so on, until the Speed reaches above 80, where diminishing returns kick in; most units with more than 100 Speed would mostly make an equal amount of actions per game turn. It is possible to activate 'on game turn' events 'on stand still' with the Crystalform power, the Dreamer prestige class and the Kairos Skirt item. This only affects the player.
