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
scoreboard players add @a[tag=ingame] CompletedCount 1
scoreboard players set @a Number 0
scoreboard players reset * var

scoreboard objectives remove KilledCheck

tag @a remove out
tag @a remove ingame
tag @a[tag=ready] remove spectator
team join Ready @a[tag=ready]

clear @a
effect clear @a
gamemode adventure @a
tp @a 100 3 100
spawnpoint @a 100 3 100

function yw-pillar:game/pillars/reset_1
function yw-pillar:lobby/entity
execute as @a run function yw-pillar:utils/player/reset/all
schedule function yw-pillar:game/sidebar/lobby 5t

data modify storage yw-pillar:settings game.event_name set value ''

time set day
worldborder set 114514

advancement revoke @a only yw-pillar:game/item/bow
advancement revoke @a only yw-pillar:game/item/crossbow