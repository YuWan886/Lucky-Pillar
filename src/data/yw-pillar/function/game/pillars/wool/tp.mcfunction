$execute if score #Game GameMode matches 1..2 run function yw-pillar:game/pillars/wool/$(player_count)
$execute if score #Game GameMode matches 3 run function yw-pillar:game/pillars/$(map_id)/red_vs_blue
fillbiome 25 -10 25 -25 100 -25 forest