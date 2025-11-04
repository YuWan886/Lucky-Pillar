# 主菜单
execute if score @s TriggerSetting.Dialog matches 1 run function yw-pillar:dialog/settings/menu with storage yw-pillar:settings game
# 对局统计
execute if score @s TriggerSetting.Dialog matches 101 run function yw-pillar:utils/player/statistic/send_chat/1 with entity @s

scoreboard players set @s TriggerSetting.Dialog 0