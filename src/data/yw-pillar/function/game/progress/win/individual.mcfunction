scoreboard players add @s WinCount 1

title @a title ["",{text:"游戏结束！",color:"yellow"}]
title @a subtitle ["",{text:"MVP ",color:"gold",bold:true},{selector:"@s",color:"green"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s
effect give @s resistance 10 4 true
scoreboard players add @a[tag=ingame] CompletedCount 1

function yw-pillar:game/log/temp/win
function yw-pillar:utils/player/win_count
scoreboard players set #Game GameStatus 0
function yw-pillar:schedule/clear
schedule function yw-pillar:game/end 3s