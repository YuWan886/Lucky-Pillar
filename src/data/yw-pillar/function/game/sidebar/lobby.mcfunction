##  幸运之柱--YuWan
# ------- v0.1.0 ------- 8
# 游戏模式：xx             7
# 准备人数：xx             6
# 当前地图：xxx            5
# 当前规则：xxx            4
# 物品间隔：xx s           3
# 事件间隔：xx s           2
# 边界收缩：xx s           1
# ----- 2025.10.15 ----- 0

# 清除
scoreboard players reset %side_playercount% side
scoreboard players reset %side_game_time%
scoreboard players reset %side_nextevent_time% side
scoreboard players reset %side_currentevent_name% side
scoreboard players reset %side_border_time% side
scoreboard players reset %side_settings_rule% side
# 添加
scoreboard players set %side_version% side 8
scoreboard players set %side_game_mode% side 7
scoreboard players set %side_readyplayer_count% side 6
scoreboard players set %side_settings_map% side 5
execute if score #Game RuleID matches 1.. run scoreboard players set %side_settings_rule% side 4
scoreboard players set %side_settings_loot_time% side 3
scoreboard players set %side_settings_event_name% side 2
scoreboard players set %side_settings_border_time% side 1
scoreboard players set %side_release_time% side 0

# 显示
scoreboard players display name %side_version% side [{text:"------- ",color:"#1bf169"},{nbt:"info.version",storage:"yw-pillar:system"},{text:" -------"}]
scoreboard players display name %side_game_mode% side ["  ",{text:"游戏模式："},{nbt:"game.game_mode",storage:"yw-pillar:settings",color:"dark_purple",bold:true}]
scoreboard players display name %side_readyplayer_count% side ["  ",{text:"准备人数："},{score:{name:"#Game",objective:"PlayerCount.Ready"},color:"green",bold:true}]
scoreboard players display name %side_settings_map% side ["  ",{text:"当前地图："},{nbt:"game.map_name",storage:"yw-pillar:settings",color:"gold",bold:true}]
execute if score #Game RuleID matches 1.. run scoreboard players display name %side_settings_rule% side ["  ",{text:"当前规则："},{nbt:"game.rule_name",storage:"yw-pillar:settings",color:"light_purple",bold:true}]
scoreboard players display name %side_settings_loot_time% side ["  ",{text:"物品间隔："},{nbt:"time.loot_time",storage:"yw-pillar:settings",color:"aqua",bold:true},"s"]
scoreboard players display name %side_settings_event_name% side ["  ",{text:"事件间隔："},{nbt:"time.event_time",storage:"yw-pillar:settings",color:"aqua",bold:true},"s"]
scoreboard players display name %side_settings_border_time% side ["  ",{text:"边界收缩："},{nbt:"time.border_time",storage:"yw-pillar:settings",color:"aqua",bold:true},"s"]
scoreboard players display name %side_release_time% side [{text:"----- ",color:"#1bf169"},{nbt:"info.release_time",storage:"yw-pillar:system"},{text:" -----"}]