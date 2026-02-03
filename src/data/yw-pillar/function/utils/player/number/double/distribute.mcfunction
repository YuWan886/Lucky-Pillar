scoreboard players operation #Game PlayerCount.ReadyTeam = #Game PlayerCount.Ready
scoreboard players operation #Game PlayerCount.ReadyTeam /= $2 math
execute if score $player_count%2 math matches 1 run scoreboard players add #Game PlayerCount.ReadyTeam 1

#src\data\yw-pillar\modules\utils\player.bolt