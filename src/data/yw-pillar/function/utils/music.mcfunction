stopsound @s

execute store result score @s Music run random value 1..4
execute if score @s Music matches 1 run playsound yw-pillar:main record @s ~ ~ ~ 100 1 1
execute if score @s Music matches 2 run playsound yw-pillar:sea record @s ~ ~ ~ 100 1 1
execute if score @s Music matches 3 run playsound yw-pillar:soft record @s ~ ~ ~ 100 1 1
execute if score @s Music matches 4 run playsound yw-pillar:battle record @s ~ ~ ~ 100 1 1

schedule function yw-pillar:utils/music 300s