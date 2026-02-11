execute if score #Game RuleID matches 7 as @a[tag=ingame,tag=!out] at @s if predicate {condition:"location_check",predicate:{position:{y:{max:-10}}}} run function yw-pillar:game/rule/7_void_mercy/run
execute unless score #Game RuleID matches 7 as @a[tag=ingame,tag=!out] at @s if predicate {condition:"location_check",predicate:{position:{y:{max:-10}}}} run kill @s

execute as @e[type=tnt,tag=!modified] as @s at @s run function yw-pillar:game/pillars/tnt/modify
execute as @a[tag=ingame,tag=!out] at @s if predicate {condition:"location_check",predicate:{position:{y:{min:120}}}} run tp @s ~ 100 ~