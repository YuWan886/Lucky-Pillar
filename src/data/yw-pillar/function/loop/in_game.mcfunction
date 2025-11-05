execute as @a[scores={DeathCheck=1..}] if score #Game GameMode matches 0 run function yw-pillar:game/progress/out/individual

execute as @a[scores={KilledCheck=1..}] run function yw-pillar:utils/player/killed

# 掉落虚空
function yw-pillar:game/pillars/location
# 中途加入
execute as @a[tag=!ingame,tag=!spectator,tag=!ready] run function yw-pillar:utils/player/join_halfway
# 随机事件
function yw-pillar:game/event/duration_tick
# 特殊规则
function yw-pillar:game/rule/effect
# 生成生物
execute as @a[tag=ingame,tag=!out] run function yw-pillar:utils/game/entity/summon