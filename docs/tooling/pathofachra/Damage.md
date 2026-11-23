---
url: https://pathofachra.wiki.gg/wiki/Damage
title: Damage - Path of Achra Wiki
words: 1407
---
Whilst it is possible to complete a pilgrimage without violence, in all likelihood you will be called upon to kill all those to attempt to stop you, the primary way of doing so being to deal damage to enemies until their Life drops to zero. Almost every ability in the game will either deal damage or facilitate your other abilities in dealing damage, so it is vital to understand how it is calculated if you want to reach the end of your journey alive.

Contents

- 1 Damage Type
  
  - 1.1 Physical Damage
  - 1.2 Non-Physical Damage
- 2 Damage Calculation
- 3 Self-Damage
- 4 Healing Calculation
- 5 Damage Increases
- 6 Healing Increases
- 7 Special Modifiers

Damage Type

All damage in the game will have a type, also known as an element. The type of damage determines certain synergies with abilities and whether the damage will be decreased (or increased) by Resistance. There are eleven damage types that can be grouped into two categories: physical and non-physical damage.

[](/wiki/File:MartialFeat.png "Physical Damage") Physical Damage

The more common damage types; physical damage encompasses wounds inflicted by all manner of ranged and melee weapons wielded by the Pilgrim or by enemies. Armor and Block are 100% effective against physical damage, making it easier to shrug-off and block. The three physical damage types are:

- [](/wiki/File:Blunt.png "Blunt Damage")Blunt
- [](/wiki/File:Pierce.png "Pierce Damage")Pierce
- [](/wiki/File:Slash.png "Slash Damage")Slash

[](/wiki/File:PowerlessFeat.png "Non-Physical Damage")Non-Physical Damage

Non-Physical damage represents damage from all other sources; magic from enemy priests, natural (or unnatural) afflictions from beasts and other, more esoteric abilities. Whilst less common than physical damage, non-physical damage is harder to reduce as Armor and Block are less effective against it. The eight non-physical damage types are:

- [](/wiki/File:Astral.png "Astral Damage")Astral
- [](/wiki/File:Blood.png "Blood Damage")Blood
- [](/wiki/File:Death.png "Death Damage")Death
- [](/wiki/File:Fire.png "Fire Damage")Fire
- [](/wiki/File:Ice.png "Ice Damage")Ice
- [](/wiki/File:Lightning.png "Lightning Damage")Lightning
- [](/wiki/File:Psychic.png "Psychic Damage")Psychic
- [](/wiki/File:Poison.png "Poison Damage")Poison

Damage Calculation

All damage, regardless of source, is calculated using a common formula. Note that this is separate from Hit Calculation (see the attack sequence) as this is how much damage is subtracted from the Pilgrim's or enemy's Life after a hit has beaten the target's defences and been confirmed. All calculations are rounded down to the nearest integer. In its simplest form damage is calculated as follows:

Damage Inflicted = (Base Damage Value + Increases + Willpower Damage Bonus) - Resistance + Special

Base Value: The base damage of the event that caused this damage calculation. In the case of attacks or hits this is the hit value. For direct damage events the value will be listed in the ability that caused the damage.

Increases: An umbrella term that covers all the abilities in the game that add a flat amount of damage to certain damage events. This can include the effects currently on you and the target, your powers and items. See below for a full list of abilities that come under this category.

Willpower: Bonus damage added by your Willpower. Note that this is calculated from the base value only and does not include damage increases (see Willpower Damage Bonus):

Willpower Damage Bonus = Base Damage Value * (1 + (Willpower / (10 * Inflexibility))

Resistance: Damage reduction based on the target's Resistance to the relevant damage type. In the case of negative Resistance this will instead increase the damage inflicted:

Damage Reduced = (Base Value + Increases + Willpower) * (1 - (Resistance / 100))

Special: Unique abilities that modify the amount of damage inflicted after all other calculations. See below for more details.

A more complete formula would therefore be:

Damage Inflicted = ((Base Value * (1 + (Willpower / (10 * Inflexibility))) + Increases) * (1 - (Resistance / 100))) + Special

Self-Damage

Some abilities in the game deal damage to the unit with that ability. This is usually referred to in the description of the ability as self-damage or dealing damage to yourself. Self-damage is unaffected by increases, Willpower Damage Bonus and other modifiers, only dealing the amount of damage listed in the ability, usually a flat number. Self-damage is also not reduced by Resistance.

Healing Calculation

Just as with damage, all healing is calculated using the same formula. Thankfully, healing is much simpler as it is unaffected by Resistance or other special modifiers. Unlike damage, all healing calculations are rounded up to the nearest integer:

Healing Received = Base Heal Value * (1 + (Willpower / 10)) + Increases

Note that while Inflexibility affects the damage bonus granted by your Willpower, it does not affect the bonus applied to healing.

Increases: As with damage, some abilities add a flat value to all healing received. See below for a full list of these abilities.

Damage Increases

|Name|Modifier|Applies To|
|---|---|---|
|[](/wiki/File:Myrmidon.png "Myrmidon Icon")<br /><br /><br /><br />Myrmidon|+20% of base value per point of Inflexibility|All [](/wiki/File:MartialFeat.png "Physical Damage") physical damage|
|[](/wiki/File:Baghatar.png "Baghatar Icon")<br /><br /><br /><br />Baghatar|+5% of base value per empty prayer charge|All damage|
|[](/wiki/File:Assassin.png "Assassin Icon")<br /><br /><br /><br />Assassin Critical|+20% of base value|20% chance on any [](/wiki/File:MartialFeat.png "Physical Damage") physical damage|
|[](/wiki/File:Assassin.png "Assassin Icon")<br /><br /><br /><br />Assassin|+20 damage per point of Dexterity|All damage dealt to adjacent enemies|
|[](/wiki/File:Phoenix.png "Phoenix Icon")<br /><br /><br /><br />Phoenix|+100% of base value, if Krasota is not fully-charged|All damage|
|[](/wiki/File:FlameKnight.png "Flame Knight Icon")<br /><br /><br /><br />Flame Knight|+20% of base value per point of Strength if Two-handing|All [](/wiki/File:Fire.png "Fire Damage")Fire damage|
|[](/wiki/File:Shantih.png "Shantih Icon")<br /><br /><br /><br />Shantih|+20% of base value per point of Dexterity|All [](/wiki/File:Lightning.png "Lightning Damage")Lightning damage|
|[](/wiki/File:Pyromaniac.png "Pyromaniac Icon")<br /><br /><br /><br />Pyromaniac|+5 damage per stack of [](/wiki/File:Inflame.png "Inflame Icon")Inflame on self|All [](/wiki/File:Fire.png "Fire Damage")Fire damage|
|[](/wiki/File:FrenziedOne.png "Frenzied One Icon")<br /><br /><br /><br />Frenzied One|+5 damage per stack of [](/wiki/File:Inflame.png "Inflame Icon")Inflame on self|All damage|
|[](/wiki/File:Windblade.png "Windblade Icon")<br /><br /><br /><br />Windblade|+200% of base value|20% chance on any [](/wiki/File:Slash.png "Slash Damage")Slash damage|
|[](/wiki/File:Elementalist.png "Elementalist Icon")<br /><br /><br /><br />Elementalist|+10% of base value per point of Willpower|All [](/wiki/File:PowerlessFeat.png "Non-Physical Damage")non-physical damage|
|[](/wiki/File:Pyromancy.png "Pyromancy Icon")<br /><br /><br /><br />Pyromancy|\+ stacks of [](/wiki/File:Scorch.png "Scorch Icon")Scorch on target * skill level|All [](/wiki/File:Fire.png "Fire Damage")Fire, [](/wiki/File:Astral.png "Astral Damage")Astral and [](/wiki/File:Lightning.png "Lightning Damage")Lightning damage|
|[](/wiki/File:Morbumancy.png "Morbumancy Icon")<br /><br /><br /><br />Morbumancy|\+ stacks of [](/wiki/File:Sickness.png "Sickness Icon")Sickness on target * skill level|All [](/wiki/File:Poison.png "Poison Damage")Poison and [](/wiki/File:Death.png "Death Damage")Death damage|
|[](/wiki/File:Acidify.png "Acidify Icon")<br /><br /><br /><br />Acidify|\+ stacks of [](/wiki/File:Corrosion.png "Corrosion Icon")Corrosion on target|All [](/wiki/File:Poison.png "Poison Damage")Poison and [](/wiki/File:Fire.png "Fire Damage")Fire damage|
|[](/wiki/File:Cryomancy.png "Cryomancy Icon")<br /><br /><br /><br />Cryomancy|\+ stacks of [](/wiki/File:Freeze.png "Freeze Icon")Freeze on target * skill level|All [](/wiki/File:Ice.png "Ice Damage")Ice and [](/wiki/File:MartialFeat.png "Physical Damage") physical damage|
|[](/wiki/File:MasterRepulsion.png "Master Repulsion Icon")<br /><br /><br /><br />Master Repulsion|\+ stacks of [](/wiki/File:Repulsion.png "Repulsion Icon")Repulsion on self|All [](/wiki/File:Astral.png "Astral Damage")Astral and [](/wiki/File:Psychic.png "Psychic Damage")Psychic damage|
|[](/wiki/File:Attune.png "Attune Icon")<br /><br /><br /><br />Attune|+1% of base value per stack|All damage|
|[](/wiki/File:Charge.png "Charge Icon")<br /><br /><br /><br />Charge|+5 damage per stack|All damage|
|[](/wiki/File:Mark.png "Mark Icon")<br /><br /><br /><br />Mark|+10% of base value per stack|All [](/wiki/File:MartialFeat.png "Physical Damage") physical damage taken|
|[](/wiki/File:Meditate.png "Meditate Icon")<br /><br /><br /><br />Meditate|+10 damage per stack|All damage|
|[](/wiki/File:Crowform.png "Crowform Icon")<br /><br /><br /><br />Crowform|+1% of base value per stack|All damage|

Healing Increases

|Name|Modifier|
|---|---|
|[](/wiki/File:Ninhurs.png "Ninhurs Icon")<br /><br /><br /><br />Ninhurs|+50% of base [](/wiki/File:Heal.png "Heal")heal value whilst standing on divine grass|
|[](/wiki/File:LifeChant.png "Life Chant Icon")<br /><br /><br /><br />Life Chant|+5|
|[](/wiki/File:Blood-drinker.png "Blood-drinker Icon")<br /><br /><br /><br />Blood-drinker|+100% of base [](/wiki/File:Heal.png "Heal")heal value|
|[](/wiki/File:Merzot.png "Merzot Icon")<br /><br /><br /><br />Merzot|+20|

Special Modifiers

There are a small number of abilities in Path of Achra that do not follow the usual damage rules. These are applied after all other calculations:

|Name|Modifier|
|---|---|
|[](/wiki/File:Agony.png "Agony Icon")<br /><br /><br /><br />Agony|If after all other damage calculations (including [](/wiki/File:Grace.png "Grace Icon")Grace, but excluding [](/wiki/File:Protection.png "Protection Icon")Protection) the total damage inflicted is less than 2% of the target's max Life, then the damage is increased by an amount equal to the difference. In other words, the minimum amount of damage that can be dealt by any damage event to a target with [](/wiki/File:Agony.png "Agony Icon")Agony is equal to 2% of their max Life.|
|[](/wiki/File:Grace.png "Grace Icon")<br /><br /><br /><br />Grace|Reduces damage taken by (5 * stacks of [](/wiki/File:Grace.png "Grace Icon")Grace). Applied after Resistance but before other special modifiers.|
|[](/wiki/File:Protection.png "Protection Icon")<br /><br /><br /><br />Protection|Upon being dealt damage, if the target has [](/wiki/File:Protection.png "Protection Icon")Protection, the damage is reduced to 1. This is applied last after all other abilities and modifiers including [](/wiki/File:Agony.png "Agony Icon")Agony.|
