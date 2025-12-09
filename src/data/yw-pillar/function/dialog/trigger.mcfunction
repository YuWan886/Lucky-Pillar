# 主菜单
execute if score @s TriggerSetting.Dialog matches 1 run function yw-pillar:dialog/settings/menu with storage yw-pillar:settings game
# 发送战绩
execute if score @s TriggerSetting.Dialog matches 101 run function yw-pillar:utils/player/statistic/send_chat/1 with entity @s
# 查看战绩
execute if score @s TriggerSetting.Dialog matches 102 run function yw-pillar:dialog/player/statistic/1
# 对局记录
execute if score @s TriggerSetting.Dialog matches 103 run function yw-pillar:game/log/show

scoreboard players set @s TriggerSetting.Dialog 0