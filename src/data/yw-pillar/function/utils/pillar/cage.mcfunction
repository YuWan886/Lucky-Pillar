execute if score #Timer BeginTimer matches 5 run title @a title ["",{text:"5",color:"#9a180a"}]
execute if score #Timer BeginTimer matches 4 run title @a title ["",{text:"4",color:"#e61a03"}]
execute if score #Timer BeginTimer matches 3 run title @a title ["",{text:"3",color:"#99660c"}]
execute if score #Timer BeginTimer matches 2 run title @a title ["",{text:"2",color:"#669912"}]
execute if score #Timer BeginTimer matches 1 run title @a title ["",{text:"1",color:"#33cc18"}]

execute if score #Timer BeginTimer matches 0 run title @a title ["",{text:"游戏开始",color:"#00ff1e"}]
execute if score #Timer BeginTimer matches 0 run gamemode survival @a[tag=ready]
$execute if score #Timer BeginTimer matches 0 at @r[tag=ingame] run function yw-pillar:game/pillars/$(map_id)/clear_cage
execute if score #Timer BeginTimer matches 0 as @a at @s run playsound entity.player.levelup master @s
execute if score #Timer BeginTimer matches 0 run function yw-pillar:schedule/1s
execute if score #Timer BeginTimer matches 0 if score #Game RuleID matches 1.. run function yw-pillar:game/rule/main

execute if score #Timer BeginTimer matches 1.. as @a at @s run playsound ui.button.click master @s

scoreboard players remove #Timer BeginTimer 1