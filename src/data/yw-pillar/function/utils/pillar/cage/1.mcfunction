execute if score #Timer BeginTimer matches 5 run title @a title ["",{text:"5",color:"#9a180a"}]
execute if score #Timer BeginTimer matches 4 run title @a title ["",{text:"4",color:"#e61a03"}]
execute if score #Timer BeginTimer matches 3 run title @a title ["",{text:"3",color:"#99660c"}]
execute if score #Timer BeginTimer matches 2 run title @a title ["",{text:"2",color:"#669912"}]
execute if score #Timer BeginTimer matches 1 run title @a title ["",{text:"1",color:"#33cc18"}]

execute if score #Timer BeginTimer matches 0 run function yw-pillar:utils/pillar/cage/2

execute if score #Timer BeginTimer matches 1.. as @a at @s run playsound ui.button.click master @s

scoreboard players remove #Timer BeginTimer 1