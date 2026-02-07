# 物品
execute if score #Timer LootTimer matches 1.. run scoreboard players remove #Timer LootTimer 1
execute if score #Timer LootTimer matches 0 run function yw-pillar:utils/player/give_item
title @a actionbar ["",{text:"物品：",color:"green"},{score:{name:"#Timer",objective:"LootTimer"},color:"gold",bold:true}]
# 事件
execute if score #Timer EventTimer matches 1.. run scoreboard players remove #Timer EventTimer 1
execute if score #Timer EventTimer matches 0 run function yw-pillar:game/event/main
# 边界
execute if score #Timer BorderTimer matches 1.. run scoreboard players remove #Timer BorderTimer 1
execute if score #Timer BorderTimer matches 0 run function yw-pillar:utils/pillar/border