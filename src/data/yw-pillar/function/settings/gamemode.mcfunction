tellraw @a ["","\n\n\n\n=-----------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]

# 单人
    execute if score @s TriggerSetting.GameMode matches 1 run tellraw @a ["",{text:"当前游戏模式：",color:"gold"},{nbt:"game.game_mode",storage:"yw-pillar:settings",color:"red"},"->",{text:"单人",color:"green",bold:true}]
    execute if score @s TriggerSetting.GameMode matches 1 run data modify storage yw-pillar:settings game merge value {game_mode:"单人"}
# 双人
    execute if score @s TriggerSetting.GameMode matches 2 run tellraw @a ["",{text:"当前游戏模式：",color:"gold"},{nbt:"game.game_mode",storage:"yw-pillar:settings",color:"red"},"->",{text:"双人",color:"green",bold:true}]
    execute if score @s TriggerSetting.GameMode matches 2 run data modify storage yw-pillar:settings game merge value {game_mode:"双人"}
# 红蓝对抗
    execute if score @s TriggerSetting.GameMode matches 3 run tellraw @a ["",{text:"当前游戏模式：",color:"gold"},{nbt:"game.game_mode",storage:"yw-pillar:settings",color:"red"},"->",{text:"红蓝对抗",color:"green",bold:true}]
    execute if score @s TriggerSetting.GameMode matches 3 run data modify storage yw-pillar:settings game merge value {game_mode:"红蓝对抗"}

scoreboard players operation #Game GameMode = @s TriggerSetting.GameMode
tellraw @a "\n=-------------------------="

scoreboard players set @s TriggerSetting.GameMode 0
function yw-pillar:game/sidebar/lobby
playsound ui.cartography_table.take_result master @s