tag @s remove out
tag @s remove ingame
tag @s remove spectator
tag @s add ready
gamemode spectator @s
team join Spectator
tp @s @r[tag=ingame,tag=!out]

clear @s
effect clear @s
function yw-pillar:utils/player/reset/all