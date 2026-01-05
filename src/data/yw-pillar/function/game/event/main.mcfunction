function yw-pillar:game/event/settle
function yw-pillar:game/event/kill_mob
function yw-pillar:game/event/clear_attribute

scoreboard players set #Timer EventDura.Sec 0
scoreboard players set #Timer EventDura.Tick 0
execute store result score #Game EventID run random value 1..35
# scoreboard players set #Game EventID 27
function yw-pillar:game/rule/modify_event

execute if score #Game EventID matches 1 run function yw-pillar:game/event/1_night_fall
execute if score #Game EventID matches 2 run function yw-pillar:game/event/2_falling_anvil
execute if score #Game EventID matches 3 run function yw-pillar:game/event/3_dragon
execute if score #Game EventID matches 4 run function yw-pillar:game/event/4_wither
execute if score #Game EventID matches 5 run function yw-pillar:game/event/5_fly
execute if score #Game EventID matches 6 run function yw-pillar:game/event/6_rain/tip
execute if score #Game EventID matches 7 run function yw-pillar:game/event/7_sky_waker/tip
execute if score #Game EventID matches 8 run function yw-pillar:game/event/8_rotation/tip
execute if score #Game EventID matches 9 run function yw-pillar:game/event/9_lightning
execute if score #Game EventID matches 10 run function yw-pillar:game/event/10_hello_world
execute if score #Game EventID matches 11 run function yw-pillar:game/event/11_undye
execute if score #Game EventID matches 12 run function yw-pillar:game/event/12_broken_leg
execute if score #Game EventID matches 13 run function yw-pillar:game/event/13_punch
execute if score #Game EventID matches 14 run function yw-pillar:game/event/14_creeper
execute if score #Game EventID matches 15 run function yw-pillar:game/event/15_touch
execute if score #Game EventID matches 16 run function yw-pillar:game/event/16_inv_exchange
execute if score #Game EventID matches 17 run function yw-pillar:game/event/17_king_game
execute if score #Game EventID matches 18 run function yw-pillar:game/event/18_lucky_doll
execute if score #Game EventID matches 19 run function yw-pillar:game/event/19_hungry
execute if score #Game EventID matches 20 run function yw-pillar:game/event/20_black
execute if score #Game EventID matches 21 run function yw-pillar:game/event/21_speed
execute if score #Game EventID matches 22 run function yw-pillar:game/event/22_mini
execute if score #Game EventID matches 23 run function yw-pillar:game/event/23_huge
execute if score #Game EventID matches 24 run function yw-pillar:game/event/24_nuclear
execute if score #Game EventID matches 25 run function yw-pillar:game/event/25_rainy_day
execute if score #Game EventID matches 26 run function yw-pillar:game/event/26_greedy_slime
execute if score #Game EventID matches 27 run function yw-pillar:game/event/27_location_exchange

execute if score #Game EventID matches 28.. run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{text:"无事发生...",color:"green"}]
execute store result score #Timer EventTimer run data get storage yw-pillar:settings time.event_time

execute if score #Game EventID matches 28.. run return fail
function yw-pillar:game/log/temp/event
