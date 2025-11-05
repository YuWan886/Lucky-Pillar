function yw-pillar:game/event/kill_mob

execute store result score #Game EventID run random value 1..15

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

execute store result score #Timer EventTimer run data get storage yw-pillar:settings time.event_time

