# 大厅 上
execute as @a[predicate=yw-pillar:player/lobby] run function yw-pillar:lobby/main
# 大厅 下
execute as @a[predicate=yw-pillar:player/pvp] run function yw-pillar:lobby/pvp
# 清理
execute as @a if items entity @s player.cursor white_dye run item replace entity @s player.cursor with air
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"item":"hotbar_item"}}}}]

# Trigger
scoreboard players enable @a TriggerSetting.GameMode
scoreboard players enable @a TriggerSetting.Map
scoreboard players enable @a TriggerSetting.Dialog
scoreboard players enable @a TriggerSetting.Rule
execute as @a[scores={TriggerSetting.GameMode=1..}] run function yw-pillar:settings/gamemode
execute as @a[scores={TriggerSetting.Map=1..}] run function yw-pillar:settings/map with storage yw-pillar:settings game
execute as @a[scores={TriggerSetting.Dialog=1..}] run function yw-pillar:dialog/trigger
execute as @a[scores={TriggerSetting.Rule=1..}] run function yw-pillar:settings/rule

# buff
effect give @a saturation infinite 0 true