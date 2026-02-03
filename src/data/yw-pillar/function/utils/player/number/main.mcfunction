scoreboard players set @a[tag=ready] Number 0

execute if score #Game GameMode matches 1 run function yw-pillar:utils/player/number/single/distribute
execute if score #Game GameMode matches 2 run function yw-pillar:utils/player/number/double/distribute
execute if score #Game GameMode matches 3 run function yw-pillar:utils/player/number/red_vs_blue/distribute