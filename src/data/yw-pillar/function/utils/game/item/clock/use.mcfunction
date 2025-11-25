advancement revoke @s only yw-pillar:game/item/clock

time add 3s
scoreboard players add @a Item.clock_using_time 1
execute if score @s Item.clock_using_time matches 400.. run function yw-pillar:utils/game/item/clock/clear
