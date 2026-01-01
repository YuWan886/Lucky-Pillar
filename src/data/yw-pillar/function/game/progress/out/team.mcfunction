execute as @s[tag=!ingame] run return fail
execute as @s[tag=out] run return fail

scoreboard players set @s DeathCheck 0
scoreboard players add @s DeathCount 1

scoreboard players remove #Game PlayerCount.Alive 1
scoreboard players add #Game PlayerCount.Out 1

gamemode spectator @s
tag @s add out
team join Out

execute if score #Game MapNumber matches 102 run schedule function yw-pillar:game/pillars/nether/dead 5t

# 检测剩余玩家是否同队伍
execute if score #Game PlayerCount.Alive matches 2 run function yw-pillar:game/progress/win/team/check
execute if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/team/run