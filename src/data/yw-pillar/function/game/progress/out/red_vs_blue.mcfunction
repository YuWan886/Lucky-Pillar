execute as @s[tag=!ingame] run return fail
execute as @s[tag=out] run return fail

scoreboard players set @s DeathCheck 0
scoreboard players add @s DeathCount 1

scoreboard players add #Game PlayerCount.Out 1

gamemode spectator @s
tag @s add out
team join Out

execute if score #Game MapNumber matches 102 run schedule function yw-pillar:game/pillars/nether/dead 5t

function yw-pillar:utils/player/count_alive
# 检测剩余玩家是否同队伍
function yw-pillar:game/progress/win/red_vs_blue/check