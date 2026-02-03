title @a title ["",{text:"游戏开始",color:"#00ff1e"}]
gamemode survival @a[tag=ingame]
execute if score #Game GameMode matches 1..2 at @r[tag=ingame] run function yw-pillar:game/pillars/common/clear_cage
execute if score #Game GameMode matches 3 at @r[tag=ingame] run function yw-pillar:game/pillars/common/clear_cage_red_vs_blue
execute as @a at @s run playsound entity.player.levelup master @s
function yw-pillar:schedule/1s
execute if score #Game RuleID matches 1.. run function yw-pillar:game/rule/main