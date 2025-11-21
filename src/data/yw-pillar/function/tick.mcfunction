execute if score #Game GameStatus matches 0 run function yw-pillar:loop/before_game
execute if score #Game GameStatus matches 1 run function yw-pillar:loop/in_game

function yw-pillar:test/tick

# 雪球和鸡蛋
function yw-pillar:utils/game/item/projectile
# 重进游戏
execute as @a[scores={LeaveGame=1..}] if score @s GameID = #Game GameID run function yw-pillar:utils/player/join/reconnect
execute as @a unless score @s GameID = #Game GameID run function yw-pillar:utils/player/join/main