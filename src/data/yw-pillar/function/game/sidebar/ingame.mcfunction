##  幸运之柱--YuWan
# ------- v0.1.1 ------- 8
# 游戏模式：xx             7
# 游戏人数：xx/xx          6
# 游戏时长：xxm xxs        5
# 当前规则：xx             4
# 下一事件：xx s           3
# 当前事件：xxx            2
# 边界收缩：xx s           1
# ----- 2025.10.15 ----- 0

# 清除
scoreboard players reset %side_readyplayer_count% side
scoreboard players reset %side_settings_map% side
scoreboard players reset %side_settings_loot_time% side
scoreboard players reset %side_settings_event_name% side
scoreboard players reset %side_settings_border_time% side
scoreboard players reset %side_settings_rule% side
# 添加
scoreboard players set %side_version% side 8
scoreboard players set %side_game_mode% side 7
scoreboard players set %side_playercount% side 6
scoreboard players set %side_game_time% side 5
execute if score #Game RuleID matches 1.. run scoreboard players set %side_settings_rule% side 4
scoreboard players set %side_nextevent_time% side 3
scoreboard players set %side_currentevent_name% side 2
scoreboard players set %side_border_time% side 1
scoreboard players set %side_release_time% side 0

# 显示
scoreboard players display name %side_version% side [{text:"------- ",color:"#1bf169"},{nbt:"info.version",storage:"yw-pillar:system"},{text:" -------"}]
scoreboard players display name %side_game_mode% side ["  ",{text:"游戏模式："},{nbt:"game.game_mode",storage:"yw-pillar:settings",color:"dark_purple",bold:true}]
scoreboard players display name %side_playercount% side ["  ",{text:"游戏人数："},{score:{name:"#Game",objective:"PlayerCount.Alive"},color:"green",bold:true},"/",{score:{name:"#Game",objective:"PlayerCount.Total"},color:"gold",bold:true}]
scoreboard players display name %side_game_time% side ["  ",{text:"游戏时长："},{score:{name:"#Timer",objective:"GameTime.Min"},bold:true},"m"," ",{score:{name:"#Timer",objective:"GameTime.Sec"},bold:true},"s"]
execute if score #Game RuleID matches 1.. run scoreboard players display name %side_settings_rule% side ["  ",{text:"当前规则："},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"light_purple",bold:true}]
scoreboard players display name %side_nextevent_time% side ["  ",{text:"下一事件："},{score:{name:"#Timer",objective:"EventTimer"},bold:true},"s"]
scoreboard players display name %side_currentevent_name% side ["  ",{text:"当前事件："},{nbt:"game.event_name",storage:"yw-pillar:settings",bold:true}]
scoreboard players display name %side_border_time% side ["  ",{text:"边界收缩："},{score:{name:"#Timer",objective:"BorderTimer"},bold:true},"s"]
scoreboard players display name %side_release_time% side [{text:"----- ",color:"#1bf169"},{nbt:"info.release_time",storage:"yw-pillar:system"},{text:" -----"}]
