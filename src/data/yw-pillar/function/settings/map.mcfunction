scoreboard players operation #Game MapNumber = @s TriggerSetting.Map

tellraw @a ["","\n\n\n\n=-------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
execute if score @s TriggerSetting.Map matches 101 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"羊毛",color:"green"}]
execute if score @s TriggerSetting.Map matches 102 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"地狱",color:"green"}]
execute if score @s TriggerSetting.Map matches 103 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"玻璃",color:"green"}]
execute if score @s TriggerSetting.Map matches 104 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"虚空",color:"green"}]
execute if score @s TriggerSetting.Map matches 201 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"海洋",color:"green"}]
execute if score @s TriggerSetting.Map matches 202 run tellraw @a ["",{text:"      当前地图：",color:"gold"},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"月球",color:"green"}]
tellraw @a "\n=-------------------------="

# 羊毛
    execute if score @s TriggerSetting.Map matches 101 run data modify storage yw-pillar:settings game merge value {map_name:"羊毛",map_id:wool}
    execute if score @s TriggerSetting.Map matches 101 run function aj:pillar/wool
# 地狱
    execute if score @s TriggerSetting.Map matches 102 run data modify storage yw-pillar:settings game merge value {map_name:"地狱",map_id:nether}
    execute if score @s TriggerSetting.Map matches 102 run function aj:pillar/nether
# 玻璃
    execute if score @s TriggerSetting.Map matches 103 run data modify storage yw-pillar:settings game merge value {map_name:"玻璃",map_id:glass}
    execute if score @s TriggerSetting.Map matches 103 run function aj:pillar/glass
# 虚空
    execute if score @s TriggerSetting.Map matches 104 run data modify storage yw-pillar:settings game merge value {map_name:"虚空",map_id:void}
    execute if score @s TriggerSetting.Map matches 104 run function aj:pillar/void
# 海洋
    execute if score @s TriggerSetting.Map matches 201 run data modify storage yw-pillar:settings game merge value {map_name:"海洋",map_id:sea}
    execute if score @s TriggerSetting.Map matches 201 run function aj:pillar/sea
# 月球
    execute if score @s TriggerSetting.Map matches 202 run data modify storage yw-pillar:settings game merge value {map_name:"月球",map_id:moon}
    execute if score @s TriggerSetting.Map matches 202 run function aj:pillar/moon

function yw-pillar:dialog/settings/menu with storage yw-pillar:settings game
scoreboard players set @s TriggerSetting.Map 0
function yw-pillar:game/sidebar/lobby
playsound ui.cartography_table.take_result master @s