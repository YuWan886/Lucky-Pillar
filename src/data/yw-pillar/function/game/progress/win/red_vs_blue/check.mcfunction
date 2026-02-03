scoreboard players set $player_count_alive_red math 0
scoreboard players set $player_count_alive_blue math 0

execute as @a[tag=ingame,tag=!out,team=Red] run scoreboard players add $player_count_alive_red math 1
execute as @a[tag=ingame,tag=!out,team=Blue] run scoreboard players add $player_count_alive_blue math 1

execute if score $player_count_alive_red math matches 0 as @a[team=Blue] at @s run function yw-pillar:game/progress/win/red_vs_blue/run
execute if score $player_count_alive_blue math matches 0 as @a[team=Red] at @s run function yw-pillar:game/progress/win/red_vs_blue/run