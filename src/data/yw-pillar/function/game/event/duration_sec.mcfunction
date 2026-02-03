execute if score #Timer EventDura.Sec matches 1.. run scoreboard players remove #Timer EventDura.Sec 1

execute if score #Game EventID matches 6 if score #Timer EventDura.Sec matches 1.. run function yw-pillar:game/event/6_rain/run
execute if score #Game EventID matches 28 at @r[tag=ingame,tag=!out] run function yw-pillar:game/event/28_lava_rise/run