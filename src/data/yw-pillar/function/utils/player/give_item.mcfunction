execute as @a[tag=ingame,tag=!out] unless score #Game ModInstalled matches 1 run loot give @s loot yw-pillar:main
execute as @a[tag=ingame,tag=!out] if score #Game ModInstalled matches 1 run loot give @s loot yw-pillar:main_mod

execute store result score #Timer LootTimer run data get storage yw-pillar:settings time.loot_time