scoreboard players remove @s Item.fly_boat_duration 1

execute at @p[tag=ingame,tag=!out,distance=..1,predicate=yw-pillar:player/on_fly_boat] anchored eyes positioned ^ ^-0.2 ^ rotated ~ ~ run teleport @s ^ ^ ^0.2 ~ ~
# execute at @p[tag=debug,distance=..1,predicate=yw-pillar:player/on_fly_boat] anchored eyes positioned ^ ^-0.2 ^ rotated ~ ~ run teleport @s ^ ^ ^0.2 ~ ~

execute if score @s Item.fly_boat_duration matches ..0 run kill @s