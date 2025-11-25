scoreboard players set @s Item.clock_using_time 0
execute if items entity @s weapon.mainhand clock[custom_data={item:"clock"}] run return run item replace entity @s weapon.mainhand with air
execute if items entity @s weapon.offhand clock[custom_data={item:"clock"}] run return run item replace entity @s weapon.offhand with air