$execute if score #Game GameMode matches 1..2 run function yw-pillar:game/pillars/nether/$(player_count)
$execute if score #Game GameMode matches 3 run function yw-pillar:game/pillars/$(map_id)/red_vs_blue
fillbiome 25 -10 25 -25 100 -25 crimson_forest
worldborder center 0 0
execute if score #Game PlayerCount.Total matches ..8 run worldborder set 40
execute if score #Game PlayerCount.Total matches 9.. run worldborder set 50