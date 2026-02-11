scoreboard players set #Game Init 1
scoreboard players set #Game GameStatus 0
scoreboard players set #Game GameMode 1
scoreboard players set #Game MapID 101

scoreboard players set #Timer LootTimer 5
scoreboard players set #Timer EventTimer 30
scoreboard players set #Timer BorderTimer 45
scoreboard players set #Timer BeginTimer 5

## 设置

# 时间
data modify storage yw-pillar:settings time set value \
{\
    loot_time:5,\
    event_time:30,\
    border_time:45,\
    begin_time:5\
}
# 游戏


team add Ready {text:"✅"}
team modify Ready color green
team modify Ready prefix {text:"[✅]",color:"green"}
team add Spectator {text:"👁"}
team modify Spectator color gray
team modify Spectator prefix {text:"[👁]",color:"gray"}
team add InGame {text:"⚔"}
team modify InGame color green
team modify InGame prefix {text:"[⚔]",color:"green"}
team modify InGame seeFriendlyInvisibles false
team add Out {text:"☠"}
team modify Out color red
team modify Out prefix {text:"[☠]",color:"red"}
function yw-pillar:utils/game/add_team

gamerule immediate_respawn true
gamerule spawner_blocks_work true
gamerule command_blocks_work true
gamerule spawn_phantoms false
gamerule spawn_mobs false
gamerule advance_weather false
gamerule advance_time false
gamerule max_block_modifications 1145145
gamerule players_sleeping_percentage 50

worldborder damage amount 1
worldborder damage buffer 0
worldborder warning distance 0

setworldspawn 100 3 100
forceload add 109 91 91 109
forceload add 16 16 -16 -16

function yw-pillar:lobby/entity

tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"数据包初始化完成！",color:"green"}]
reload