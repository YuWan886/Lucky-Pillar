execute if score #Game MapNumber matches 101 run function yw-pillar:game/pillars/wool/ingame
execute if score #Game MapNumber matches 102 in yw-pillar:the_nether_2 run function yw-pillar:game/pillars/nether/ingame
execute if score #Game MapNumber matches 103 run function yw-pillar:game/pillars/glass/ingame
execute if score #Game MapNumber matches 104 run function yw-pillar:game/pillars/void/ingame
execute if score #Game MapNumber matches 201 run function yw-pillar:game/pillars/sea/ingame
execute if score #Game MapNumber matches 202 run function yw-pillar:game/pillars/moon/ingame

# 随机事件
execute if score #Timer EventDura.Sec matches 1.. run function yw-pillar:game/event/duration_sec
# 侧边栏
function yw-pillar:game/sidebar/ingame
# 计时
function yw-pillar:utils/game/gametime
execute as @a[tag=ingame,tag=!out] run function yw-pillar:utils/player/playtime

execute if score #Game GameStatus matches 1 run schedule function yw-pillar:schedule/1s 1s