scoreboard players remove @s Enchant.wind_brust_plus_cooldown 1
execute as @s[scores={Enchant.wind_brust_plus_cooldown=1}] run title @s actionbar ["",{bold:true,text:"",extra:[{color:"aqua",text:"<<<"},{color:"gold",text:"让你飞起来"},{color:"green",text:"冷却完成！"},{color:"aqua",text:">>>"}]}]
execute as @s[scores={Enchant.wind_brust_plus_cooldown=1}] run playsound entity.experience_orb.pickup master @s