execute store result storage yw-pillar:temp lava_hight_clear int 1 run scoreboard players add $LavaHight.clear math 1

function yw-pillar:game/event/28_lava_rise/clear_2 with storage yw-pillar:temp

execute if score $LavaHight.clear math < $LavaHight math run function yw-pillar:game/event/28_lava_rise/clear
execute if score $LavaHight.clear math = $LavaHight math run scoreboard players set $LavaHight.clear math 0