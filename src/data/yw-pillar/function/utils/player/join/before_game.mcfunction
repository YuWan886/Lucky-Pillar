tag @s remove out
tag @s remove ingame
tag @s remove spectator
tag @s add ready
gamemode adventure @s
team join Ready
tp 100 3 100

clear @s
effect clear @s
function yw-pillar:utils/player/reset/all
function yw-pillar:utils/player/count
function yw-pillar:game/sidebar/lobby

# 节日
function yw-pillar:utils/festival/all