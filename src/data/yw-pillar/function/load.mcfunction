## Game
scoreboard objectives add Init dummy
scoreboard objectives add Dev dummy
scoreboard objectives add GameStatus dummy
scoreboard objectives add GameMode dummy
scoreboard objectives add GameID dummy
scoreboard objectives add EventID dummy
scoreboard objectives add RuleID dummy
scoreboard objectives add PlayerCount dummy
scoreboard objectives add MapNumber dummy
scoreboard objectives add BorderWidth dummy
scoreboard objectives add CollapseTimes dummy
scoreboard objectives add PlayerCount.Ready dummy
scoreboard objectives add PlayerCount.ReadyTeam dummy
scoreboard objectives add PlayerCount.Total dummy
scoreboard objectives add PlayerCount.Alive dummy
scoreboard objectives add PlayerCount.Out dummy
scoreboard objectives add ModInstalled dummy
## Time
scoreboard objectives add BeginTimer dummy
scoreboard objectives add EventTimer dummy
scoreboard objectives add EventDura.Sec dummy
scoreboard objectives add EventDura.Tick dummy
scoreboard objectives add LootTimer dummy
scoreboard objectives add BorderTimer dummy
scoreboard objectives add GameTime.Min dummy
scoreboard objectives add GameTime.Sec dummy

scoreboard objectives add SysTime.Hour dummy
scoreboard objectives add SysTime.Min dummy
scoreboard objectives add SysTime.Sec dummy
## Temp

scoreboard objectives add var dummy
## 侧边栏
scoreboard objectives add side dummy ["",{color:"#bd2fc2",text:"幸"},{color:"#cf5f85",text:"运"},{color:"#e28e47",text:"之"},{color:"#f4bd0a",text:"柱"},{text:"——YuWan",color:"aqua"}]
scoreboard objectives setdisplay sidebar side
scoreboard objectives modify side numberformat blank
scoreboard objectives modify side displayautoupdate true

## Player
scoreboard objectives add Number dummy
scoreboard objectives add TeamNumber dummy
scoreboard objectives add DeathCheck deathCount
scoreboard objectives add TriggerSetting.GameMode trigger
scoreboard objectives add TriggerSetting.Map trigger
scoreboard objectives add TriggerSetting.Dialog trigger
scoreboard objectives add TriggerSetting.Rule trigger
scoreboard objectives add LeaveGame custom:leave_game
scoreboard objectives add Music dummy
scoreboard objectives add YanPai dummy
scoreboard objectives add LuckyBlock dummy
scoreboard objectives add HP health
scoreboard objectives setdisplay list HP
# 使用
    scoreboard objectives add Used.fox_spawn_egg used:fox_spawn_egg
    scoreboard objectives add Used.ender_dragon_spawn_egg used:ender_dragon_spawn_egg
    scoreboard objectives add Used.wolf_spawn_egg used:wolf_spawn_egg
# 统计
    scoreboard objectives add PlayTime.Hour dummy
    scoreboard objectives add PlayTime.Min dummy
    scoreboard objectives add PlayTime.Sec dummy
    scoreboard objectives add CompletedCount dummy
    scoreboard objectives add DeathCount dummy
    scoreboard objectives add KilledCount dummy
    scoreboard objectives add WinCount dummy
# 头衔
    scoreboard objectives add nametag dummy
    scoreboard objectives setdisplay below_name nametag
    scoreboard objectives modify nametag numberformat blank
    scoreboard objectives modify nametag displayname ''
# 道具
    scoreboard objectives add Item.clock_using_time dummy
    scoreboard objectives add Item.fly_boat_duration dummy
    scoreboard objectives add Enchant.wind_brust_plus_cooldown dummy

## Utils
scoreboard objectives add Pos.X dummy
scoreboard objectives add Pos.Y dummy
scoreboard objectives add Pos.Z dummy
scoreboard objectives add Rota.X dummy
scoreboard objectives add Rota.Y dummy

## math
scoreboard objectives add math dummy
scoreboard players set $100 math 100
scoreboard players set $20 math 20
scoreboard players set $2 math 2

function yw-pillar:schedule/yuwan_say
function yw-pillar:utils/mod/check_install
execute unless score #Game Init matches 1 run function yw-pillar:init

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"dark_purple",bold:true},{text:"数据包重载成功！",color:"green"}]