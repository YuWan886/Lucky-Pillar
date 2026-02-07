scoreboard players remove @s Enchant.wind_brust_plus_cooldown 1

execute if items entity @s[scores={Enchant.wind_brust_plus_cooldown=1..}] weapon.mainhand mace[custom_data={item:"fly_mace"}] run title @s actionbar ["",{bold:true,text:"",extra:[{color:"aqua",text:"<<< "},{color:"gold",text:"让你飞起来"},{text:" 冷却时间："},{score:{name:"@s",objective:"Enchant.wind_brust_plus_cooldown"}},{color:"aqua",text:" >>>"}]}]
execute as @s[scores={Enchant.wind_brust_plus_cooldown=0}] run title @s actionbar ["",{bold:true,text:"",extra:[{color:"aqua",text:"<<< "},{color:"gold",text:"让你飞起来"},{color:"green",text:" 冷却完成！"},{color:"aqua",text:" >>>"}]}]
execute as @s[scores={Enchant.wind_brust_plus_cooldown=0}] at @s run playsound entity.experience_orb.pickup master @s