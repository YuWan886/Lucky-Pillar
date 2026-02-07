execute if score #Game MapID matches 101 run function yw-pillar:game/pillars/wool/ingame
execute if score #Game MapID matches 102 in yw-pillar:the_nether_2 run function yw-pillar:game/pillars/nether/ingame
execute if score #Game MapID matches 103 run function yw-pillar:game/pillars/glass/ingame
execute if score #Game MapID matches 104 run function yw-pillar:game/pillars/void/ingame
execute if score #Game MapID matches 105 run function yw-pillar:game/pillars/tnt/ingame
execute if score #Game MapID matches 106 run function yw-pillar:game/pillars/trap_door/ingame
execute if score #Game MapID matches 201 run function yw-pillar:game/pillars/sea/ingame
execute if score #Game MapID matches 202 run function yw-pillar:game/pillars/moon/ingame

# 随机事件
function yw-pillar:game/event/duration_sec
# 侧边栏
function yw-pillar:game/sidebar/ingame
# 计时
function yw-pillar:utils/game/gametime
execute as @a[tag=ingame,tag=!out] run function yw-pillar:utils/player/playtime
# 人数为0 结束游戏
execute store result score #Game PlayerCount run list
execute if score #Game PlayerCount matches 0 run function yw-pillar:game/end

execute if score #Game GameStatus matches 1 run schedule function yw-pillar:schedule/1s 1s

