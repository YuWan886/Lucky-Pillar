$function yw-pillar:game/pillars/nether/$(player_count)
fillbiome 25 -10 25 -25 100 -25 crimson_forest
worldborder center 0 0
execute if score #Game PlayerCount.Total matches ..8 run worldborder set 40
execute if score #Game PlayerCount.Total matches 9.. run worldborder set 50