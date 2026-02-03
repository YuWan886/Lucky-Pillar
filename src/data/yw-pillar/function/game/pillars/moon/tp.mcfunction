$execute if score #Game GameMode matches 1..2 run function yw-pillar:game/pillars/moon/$(player_count)
$execute if score #Game GameMode matches 3 run function yw-pillar:game/pillars/$(map_id)/red_vs_blue
execute as @a[tag=ingame,tag=!out] run attribute @s gravity base set 0.01
execute as @a[tag=ingame,tag=!out] run attribute @s safe_fall_distance base set 16
fillbiome 25 -10 25 -25 100 -25 plains