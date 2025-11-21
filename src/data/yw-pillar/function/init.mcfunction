scoreboard players set #Game Init 1
scoreboard players set #Game GameStatus 0
scoreboard players set #Game GameMode 0
scoreboard players set #Game MapNumber 1

scoreboard players set #Timer LootTimer 5
scoreboard players set #Timer EventTimer 60
scoreboard players set #Timer BorderTimer 45
scoreboard players set #Timer BeginTimer 5

## 设置

# 时间
data modify storage yw-pillar:settings time set value \
{\
    loot_time:5,\
    event_time:60,\
    border_time:45,\
    begin_time:5\
}
# 游戏


team add Ready {text:"准备"}
team modify Ready color green
team modify Ready prefix {text:"[准备]",color:"green"}
team add Spectator {text:"旁观"}
team modify Spectator color gray
team modify Spectator prefix {text:"[旁观]",color:"gray"}
team add InGame {text:"游戏中"}
team modify InGame color green
team modify InGame prefix {text:"[游戏中]",color:"green"}
team add Out {text:"寄了"}
team modify Out color red
team modify Out prefix {text:"[寄了]",color:"red"}

gamerule spawn_phantoms false
gamerule spawn_mobs false
gamerule advance_weather false
gamerule advance_time false
gamerule immediate_respawn true
gamerule max_block_modifications 1145145

worldborder damage amount 1
worldborder damage buffer 0
worldborder warning distance 0

setworldspawn 100 3 100
forceload add 109 91 91 109
forceload add 16 16 -16 -16

tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"数据包初始化完成！",color:"green"}]