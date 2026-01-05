# 羊毛
execute if score #Game MapNumber matches 101 run function yw-pillar:game/pillars/wool/tp with storage yw-pillar:settings game
# 地狱
execute if score #Game MapNumber matches 102 in yw-pillar:the_nether_2 run tp @a 0 65 0
execute if score #Game MapNumber matches 102 run schedule function yw-pillar:utils/pillar/change_dimension 5t
# 玻璃
execute if score #Game MapNumber matches 103 run function yw-pillar:game/pillars/glass/tp with storage yw-pillar:settings game
# 虚空
execute if score #Game MapNumber matches 104 run function yw-pillar:game/pillars/void/tp with storage yw-pillar:settings game
# 海洋
execute if score #Game MapNumber matches 201 run function yw-pillar:game/pillars/sea/tp with storage yw-pillar:settings game
# 月球
execute if score #Game MapNumber matches 202 run function yw-pillar:game/pillars/moon/tp with storage yw-pillar:settings game

execute as @a at @s run spawnpoint @s ~ ~ ~
worldborder center 0 0
execute if score #Game PlayerCount.Total matches ..8 run worldborder set 40
execute if score #Game PlayerCount.Total matches 9.. run worldborder set 50

execute as @a[tag=spectator] run tp @s @r[tag=ingame]