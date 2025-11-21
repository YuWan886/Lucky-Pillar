advancement revoke @s only yw-pillar:lobby/play_button

execute if function yw-pillar:utils/game/check run return fail

playsound ui.button.click master @s
scoreboard players set #Game GameStatus 1
scoreboard players add #Game GameID 1
scoreboard players operation @a GameID = #Game GameID

scoreboard players set @a DeathCheck 0
scoreboard players operation #Game PlayerCount.Total = #Game PlayerCount.Ready
scoreboard players operation #Game PlayerCount.Alive = #Game PlayerCount.Total

scoreboard objectives add KilledCheck playerKillCount

gamemode spectator @a[tag=spectator]

tag @a[tag=ready] add ingame
team join InGame @a[tag=ready]

clear @a
effect clear @a
effect give @a instant_health 1 5 true


execute store result score #Timer LootTimer run data get storage yw-pillar:settings time.loot_time
execute store result score #Timer EventTimer run data get storage yw-pillar:settings time.event_time
execute store result score #Timer BorderTimer run data get storage yw-pillar:settings time.border_time
execute store result score #Timer BeginTimer run data get storage yw-pillar:settings time.begin_time

function yw-pillar:utils/player/number/main
function yw-pillar:game/pillars/tp
function yw-pillar:game/sidebar/ingame
function yw-pillar:schedule/countdown

title @a times 0 2s 10t
time set day

gamerule keep_inventory false

tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"