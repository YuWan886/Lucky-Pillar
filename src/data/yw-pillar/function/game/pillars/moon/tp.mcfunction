$function yw-pillar:game/pillars/moon/$(player_count)

execute as @a[tag=ingame,tag=!out] run attribute @s gravity base set 0.01
execute as @a[tag=ingame,tag=!out] run attribute @s safe_fall_distance base set 16

worldborder center 0 0
execute if score #Game PlayerCount.Total matches ..8 run worldborder set 40
execute if score #Game PlayerCount.Total matches 9.. run worldborder set 50