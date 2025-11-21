execute if score #Game MapNumber matches 1 run function yw-pillar:game/pillars/wool/tp with storage yw-pillar:settings game
execute if score #Game MapNumber matches 2 run function yw-pillar:game/pillars/sea/tp with storage yw-pillar:settings game

execute if score #Game MapNumber matches 3 in yw-pillar:the_nether_2 run tp @a 0 100 0
execute if score #Game MapNumber matches 3 run schedule function yw-pillar:utils/pillar/change_dimension 5t

execute as @a[tag=spectator] run tp @s @r[tag=ingame]