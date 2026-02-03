scoreboard players set #Game PlayerCount.Ready 0
execute as @a[tag=ready] run scoreboard players add #Game PlayerCount.Ready 1

# 单人
execute if score #Game GameMode matches 1 store result storage yw-pillar:settings game.player_count int 1 run scoreboard players get #Game PlayerCount.Ready
# 双人
execute if score #Game GameMode matches 2 run scoreboard players operation $Temp PlayerCount.Ready = #Game PlayerCount.Ready
execute if score #Game GameMode matches 2 run scoreboard players operation $player_count%2 math = #Game PlayerCount.Ready
execute if score #Game GameMode matches 2 run scoreboard players operation $player_count%2 math %= $2 math
execute if score #Game GameMode matches 2 if score $player_count%2 math matches 0 store result storage yw-pillar:settings game.player_count int 0.5 run scoreboard players get $Temp PlayerCount.Ready
execute if score #Game GameMode matches 2 if score $player_count%2 math matches 1 store result storage yw-pillar:settings game.player_count int 0.5 run scoreboard players add $Temp PlayerCount.Ready 1
# 红蓝对抗
execute if score #Game GameMode matches 3 run data modify storage yw-pillar:settings game.player_count set value 2