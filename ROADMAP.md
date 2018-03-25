Roadmap to 1.0 or to a fully playable game.
Each point release should contain only a minimal well defined set of new
features, prefereably organized around a single theme.

0.1
---

Most basic vertical slice of hot-seat gameplay.

* Game content
    - basic terrain-types:
        + flat
        + hills
        + mountains
    - single unit-type (spearman)
    - cities can be conquered
    - armies have a fixed MP, can only move until MP runs out
    - MP needed to move through a tile depends on terrain:
        + flat: 1
        + hills: 2
        + mountains: 3

* Generate a random map
    - user can set number of players
    - user can set map size
    - each player can choose banner and colors
    - each player starts with a city

* Gameplay
    - player can train units
    - player can move units to armies
    - player can move armies
    - player can attack armies and cities of other players
    - battles are resolved automatically, larger army wins, looser army
      is destroyed
    - players can end turn
    - players should be able to view size and MP of armies
    - players should be able to view size of garrisons

0.2
---

Introduce a basic economy and victory/loose condition.

* Game content
    - basic economy: cities yield gold, training and maintaining units
      costs gold
    - basic victory: conquer all cities
    - player looses when looses all cities

* Random map generation
    - somewhat meaningful distribution of terrain
    - players are distributed on the map so that they are as far from
      each other as possible

* Gameplay
    - economy summary screen

0.3
---

Introduce battles.

* Game content
    - battles
    - add HP and damage of units

* Random map generation

* Gameplay
    - attacking enemy army or settlement starts a battle
    - units can move on the battlefield
    - units can attack other units: attacked units looses HP equivalent
      to the damage of attacker unit; when HP <= 0 unit dies
    - player who looses all units looses battle
    - when attacking settlements units of the defending army have +25%
      HP.
    - battlefield is a flat map of a fixed size (8?)

0.4
---

Introduce neutral cities and very basic AI.

* Game content
    - neutral cities have a smallish garrison (a player with a single
      city should be able to train an army that can take a neutral city)
    - neutral settlement's garrison slowly grows, but only to a fixed
      upper limit
    - neutral settlement's garrison will defend themselves
    - during battles, neutral units will attack any enemy unit that
      comes closer than a given limit
    - during battles neutral units will attack either closest enemy unit
      or the one they can kill

* Random map generation
    - generate neutral settlements

* Gameplay

0.5
---

Introduce new units: archer and horsemen.

* Game content
    - new unit: bowman
        + ranged damage but lower (0.5x) melee damage
    - new unit: horseman
        + higher MP (2x) in battle

* Random map generation

* Gameplay
    - players can train all unit types


Other planned features
======================

* Basic city development
