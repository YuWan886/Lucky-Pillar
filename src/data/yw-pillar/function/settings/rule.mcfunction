tellraw @a ["","\n\n\n\n=-----------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
# 关闭特殊规则
    execute if score @s TriggerSetting.Rule matches 99 run tellraw @a ["",{text:"当前规则：",color:"gold"},{text:"无"}]
# 小小的也很可爱
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"小小的也很可爱❤",color: "#f90fce",shadow_color: -7273689,bold:true}]
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家尺寸缩小为原来的 §l1/3",color:"blue"}]
# 大！大！大！
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{"text":"大！大！大！",color:"yellow",shadow_color:-38896125,bold:true}]
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家尺寸增大为原来的 §l3/2",color:"blue"}]
# 我的伙伴
    execute if score @s TriggerSetting.Rule matches 3 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{"text":"我的伙伴",color:"blue",shadow_color:-48357795,bold:true}]
    execute if score @s TriggerSetting.Rule matches 3 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"获得一只 §l狐狸",color:"blue"},{text:"\n  狐狸存活时,给玩家提供力量和生命回复",color:"blue"}]
# 一击必杀！
    execute if score @s TriggerSetting.Rule matches 4 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{"text":"一击必杀！",color:"red",shadow_color:-41089492,bold:true}]
    execute if score @s TriggerSetting.Rule matches 4 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家攻击伤害变成 §l40",color:"blue"}]
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
# 我的伙伴
    execute if score @s TriggerSetting.Rule matches 3 run data modify storage yw-pillar:settings game merge value {rule_name:"我的伙伴",rule_id:3}
    execute if score @s TriggerSetting.Rule matches 3 run scoreboard players set #Game RuleID 3
# 一击必杀！
    execute if score @s TriggerSetting.Rule matches 4 run data modify storage yw-pillar:settings game merge value {rule_name:"一击必杀！",rule_id:4}
    execute if score @s TriggerSetting.Rule matches 4 run scoreboard players set #Game RuleID 4

scoreboard players set @s TriggerSetting.Rule 0
function yw-pillar:game/sidebar/lobby