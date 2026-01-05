$function yw-pillar:game/pillars/moon/$(player_count)

execute as @a[tag=ingame,tag=!out] run attribute @s gravity base set 0.01
execute as @a[tag=ingame,tag=!out] run attribute @s safe_fall_distance base set 16
fillbiome 25 -10 25 -25 100 -25 plains