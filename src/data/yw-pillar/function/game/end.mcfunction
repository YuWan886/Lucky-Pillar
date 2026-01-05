scoreboard players set #Game GameStatus 0

scoreboard players set #Timer EventDura.Sec 0
scoreboard players set #Timer EventDura.Tick 0
scoreboard players set #Timer GameTime.Min 0
scoreboard players set #Timer GameTime.Sec 0
scoreboard players set #Game PlayerCount.Total 0
scoreboard players set #Game PlayerCount.Alive 0
scoreboard players set #Game PlayerCount.Out 0
scoreboard players set #Game BorderWidth 1145
scoreboard players set #Game CollapseTimes 0
scoreboard players set #Game EventID 0
scoreboard players reset * var
scoreboard objectives remove KilledCheck

data modify storage yw-pillar:settings game.event_name set value ''
function yw-pillar:game/pillars/reset_1
execute in overworld run function yw-pillar:lobby/entity
execute as @a run function yw-pillar:utils/player/reset/all
function yw-pillar:game/sidebar/lobby
function yw-pillar:schedule/clear

tag @a remove out
tag @a remove ingame
tag @a[tag=ready] remove spectator
team join Ready @a[tag=ready]

weather clear
clear @a
effect clear @a
gamemode adventure @a
execute in overworld run tp @a 100 3 100
execute in overworld run spawnpoint @a 100 3 100

# 节日
function yw-pillar:utils/festival/all