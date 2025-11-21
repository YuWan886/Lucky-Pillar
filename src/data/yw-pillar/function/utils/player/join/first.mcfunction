tp @s 100 3 100
gamemode adventure @s
team join Ready
tag @s add ready

execute if score #Game GameStatus matches 1 run function yw-pillar:utils/player/join/ingame