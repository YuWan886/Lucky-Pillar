execute as @s[tag=!ingame] run return fail

scoreboard players set @s DeathCheck 0
scoreboard players add @s DeathCount 1

scoreboard players remove #Game PlayerCount.Alive 1
scoreboard players add #Game PlayerCount.Out 1

gamemode spectator @s
tag @s add out
team join Out

spawnpoint @s ~ ~ ~
execute if score #Game MapNumber matches 3 run schedule function yw-pillar:game/pillars/nether/dead 10t

execute if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/individual