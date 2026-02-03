execute as @a[scores={DeathCheck=1..}] if score #Game GameMode matches 1 run function yw-pillar:game/progress/out/individual
execute as @a[scores={DeathCheck=1..}] if score #Game GameMode matches 2 run function yw-pillar:game/progress/out/team
execute as @a[scores={DeathCheck=1..}] if score #Game GameMode matches 3 run function yw-pillar:game/progress/out/team

execute as @a[scores={KilledCheck=1..}] run function yw-pillar:utils/player/killed

# 掉落虚空
function yw-pillar:game/pillars/location
# 随机事件
function yw-pillar:game/event/duration_tick
# 特殊规则
function yw-pillar:game/rule/effect
# 生成生物
execute as @a[tag=ingame,tag=!out] run function yw-pillar:utils/game/entity/summon

execute store result score #Game PlayerCount run list
execute if score #Game PlayerCount matches 0 run function yw-pillar:game/end