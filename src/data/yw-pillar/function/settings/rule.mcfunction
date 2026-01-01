tellraw @a ["","\n\n\n\n=-----------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
# 关闭特殊规则
    execute if score @s TriggerSetting.Rule matches 99 run tellraw @a ["",{text:"当前规则：",color:"gold"},{text:"无"}]
    execute if score @s TriggerSetting.Rule matches 99 run data modify storage yw-pillar:settings game merge value {rule_name:"",rule_id:-1}
    execute if score @s TriggerSetting.Rule matches 99 run scoreboard players set #Game RuleID -1
# 小小的也很可爱
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"小小的也很可爱❤",color: "#f90fce",shadow_color: -7273689,bold:true}]
    execute if score @s TriggerSetting.Rule matches 1 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家尺寸缩小为原来的 \u00a7l1/3",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 1 run data modify storage yw-pillar:settings game merge value {rule_name:"小小的也很可爱",rule_id:1}
    execute if score @s TriggerSetting.Rule matches 1 run scoreboard players set #Game RuleID 1
# 大！大！大！
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"大！大！大！",color:"yellow",shadow_color:-38896125,bold:true}]
    execute if score @s TriggerSetting.Rule matches 2 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家尺寸增大为原来的 \u00a7l3/2",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 2 run data modify storage yw-pillar:settings game merge value {rule_name:"大！大！大！",rule_id:2}
    execute if score @s TriggerSetting.Rule matches 2 run scoreboard players set #Game RuleID 2
# 我的伙伴
    execute if score @s TriggerSetting.Rule matches 3 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"我的伙伴",color:"blue",shadow_color:-48357795,bold:true}]
    execute if score @s TriggerSetting.Rule matches 3 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"获得一只 \u00a7l狐狸",color:"blue"},{text:"\n  狐狸存活时,给玩家提供力量和生命回复",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 3 run data modify storage yw-pillar:settings game merge value {rule_name:"我的伙伴",rule_id:3}
    execute if score @s TriggerSetting.Rule matches 3 run scoreboard players set #Game RuleID 3
# 一击必杀！
    execute if score @s TriggerSetting.Rule matches 4 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"一击必杀！",color:"red",shadow_color:-41089492,bold:true}]
    execute if score @s TriggerSetting.Rule matches 4 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"玩家攻击伤害变成 \u00a7l40",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 4 run data modify storage yw-pillar:settings game merge value {rule_name:"一击必杀！",rule_id:4}
    execute if score @s TriggerSetting.Rule matches 4 run scoreboard players set #Game RuleID 4
# 背包交换
    execute if score @s TriggerSetting.Rule matches 5 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"背包交换",color:"green",shadow_color:-11832829,bold:true}]
    execute if score @s TriggerSetting.Rule matches 5 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"随机事件固定为 \u00a7l背包交换",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 5 run data modify storage yw-pillar:settings game merge value {rule_name:"背包交换",rule_id:5}
    execute if score @s TriggerSetting.Rule matches 5 run scoreboard players set #Game RuleID 5
# I sea you
    execute if score @s TriggerSetting.Rule matches 6 run tellraw @a ["",{text:"当前规则：",color:"gold"},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"red"},"->",{text:"I sea you",color:"white",shadow_color:-6287344,bold:true}]
    execute if score @s TriggerSetting.Rule matches 6 run tellraw @a ["",{text:"效果：",color:"gold"},{text:"\u00a7r玩家获得 \u00a7r\u00a73\u00a7l隐身\u00a7r,事件结束后获得 \u00a7r\u00a7l5s \u00a7r\u00a7f\u00a7l发光",color:"blue"}]
    execute if score @s TriggerSetting.Rule matches 6 run data modify storage yw-pillar:settings game merge value {rule_name:"I sea you",rule_id:6}
    execute if score @s TriggerSetting.Rule matches 6 run scoreboard players set #Game RuleID 6
tellraw @a "\n=-----------------------------="

scoreboard players set @s TriggerSetting.Rule 0
function yw-pillar:game/sidebar/lobby
playsound ui.cartography_table.take_result master @s