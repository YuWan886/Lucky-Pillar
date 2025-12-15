execute as @r[tag=ingame,tag=!out] in overworld run loot replace block 100 101 100 container.0 loot yw-pillar:log/event

function yw-pillar:game/log/temp/common
execute in overworld run data modify storage yw-pillar:log temp.activity.contents append from block 100 101 100 Items[0].components."minecraft:lore"

function yw-pillar:game/log/write with storage yw-pillar:log temp
data remove storage yw-pillar:log temp.activity