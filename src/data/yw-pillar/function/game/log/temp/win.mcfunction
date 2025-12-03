loot replace entity @s enderchest.0 loot yw-pillar:log/win

function yw-pillar:game/log/temp/common
data modify storage yw-pillar:log temp.activity.contents append from entity @s EnderItems[0].components."minecraft:lore"

function yw-pillar:game/log/write with storage yw-pillar:log temp
data remove storage yw-pillar:log temp.activity