$function yw-pillar:game/pillars/wool/$(player_count)
worldborder center 0 0
execute if score #Game PlayerCount.Total matches ..8 run worldborder set 40
execute if score #Game PlayerCount.Total matches 9.. run worldborder set 50