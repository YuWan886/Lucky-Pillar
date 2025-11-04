tellraw @a ["","\n\n\n\n=-----------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
# 关闭特殊规则
    execute if score @s TriggerSetting.Rule matches 99 run tellraw @a ["",{text:"当前规则：",color:"gold"},{text:"无"}]
# 小小的也很可爱
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"小小的也很可爱❤",color: "#f90fce",shadow_color: -7273689,bold:true}]
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"所有玩家尺寸缩小为原来的 \u00a7r\u00a7l1/3",color:"blue"}]
# 大！大！大！
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{"text":"大！大！大！",color:"yellow",shadow_color:-38896125,bold:true}]
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"所有玩家尺寸增大为原来的 \u00a7r\u00a7l3/2",color:"blue"}]
tellraw @a "\n=-----------------------------="

# 关闭特殊规则
    execute if score @s TriggerSetting.Rule matches 99 run data modify storage yw-pillar:settings game merge value {rule_name:"",rule_id:-1}
    execute if score @s TriggerSetting.Rule matches 99 run scoreboard players set #Game RuleID -1
# 小小的也很可爱
    execute if score @s TriggerSetting.Rule matches 1 run data modify storage yw-pillar:settings game merge value {rule_name:"小小的也很可爱",rule_id:1}
    execute if score @s TriggerSetting.Rule matches 1 run scoreboard players set #Game RuleID 1
# 大！大！大！
    execute if score @s TriggerSetting.Rule matches 2 run data modify storage yw-pillar:settings game merge value {rule_name:"大！大！大！",rule_id:2}
    execute if score @s TriggerSetting.Rule matches 2 run scoreboard players set #Game RuleID 2

scoreboard players set @s TriggerSetting.Rule 0
function yw-pillar:game/sidebar/lobby