execute if score #Timer EventDura.Tick matches 1.. run scoreboard players remove #Timer EventDura.Tick 1

execute if score #Game EventID matches 7 as @a[tag=ingame,tag=!out] run function yw-pillar:game/event/7_sky_waker/run
execute if score #Game EventID matches 8 as @a[tag=ingame,tag=!out] if score #Timer EventDura.Tick matches 1.. run function yw-pillar:game/event/8_rotation/run
execute if score #Game EventID matches 17 as @a[tag=ingame,tag=!out] if entity @a[tag=event.17_king_game,tag=out] run function yw-pillar:game/event/17_king_game/run_2