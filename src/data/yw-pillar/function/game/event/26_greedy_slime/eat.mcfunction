execute as @e[type=slime,tag=event.26_greedy_slime] at @s run kill @e[type=item,sort=nearest,limit=1]

scoreboard players add $SlimeSize math 1
execute if score $SlimeSize math matches 3.. as @e[type=slime,tag=event.26_greedy_slime] store result entity @s Size int 0.6 run scoreboard players get $SlimeSize math