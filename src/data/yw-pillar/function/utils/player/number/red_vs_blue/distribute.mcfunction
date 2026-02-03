scoreboard players operation $player_count/2 math = #Game PlayerCount.Ready
execute store result storage yw-pillar:temp player_count_half int 1 run scoreboard players operation $player_count/2 math /= $2 math
function yw-pillar:utils/player/number/red_vs_blue/2 with storage yw-pillar:temp