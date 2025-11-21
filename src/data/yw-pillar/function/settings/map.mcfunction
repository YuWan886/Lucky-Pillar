tellraw @a ["","\n\n\n\n=-------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
execute if score @s TriggerSetting.Map matches 1 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"羊毛",color:"green"}]
execute if score @s TriggerSetting.Map matches 2 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"海洋",color:"green"}]
execute if score @s TriggerSetting.Map matches 3 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"地狱",color:"green"}]
tellraw @a "\n=-------------------------="


# 羊毛
    execute if score @s TriggerSetting.Map matches 1 run data modify storage yw-pillar:settings game merge value {previous:1,current:1,next:2,map_name:"羊毛",map_id:wool}
    execute if score @s TriggerSetting.Map matches 1 run function aj:pillar/wool
# 海洋
    execute if score @s TriggerSetting.Map matches 2 run data modify storage yw-pillar:settings game merge value {previous:1,current:2,next:3,map_name:"海洋",map_id:sea}
    execute if score @s TriggerSetting.Map matches 2 run function aj:pillar/sea
# 地狱
    execute if score @s TriggerSetting.Map matches 3 run data modify storage yw-pillar:settings game merge value {previous:2,current:3,next:3,map_name:"地狱",map_id:nether}
    execute if score @s TriggerSetting.Map matches 3 run function aj:pillar/nether

function yw-pillar:dialog/settings/menu with storage yw-pillar:settings game
scoreboard players set @s TriggerSetting.Map 0
function yw-pillar:game/sidebar/lobby
playsound ui.cartography_table.take_result master @s