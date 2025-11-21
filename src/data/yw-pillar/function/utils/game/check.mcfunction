# 游戏进行中
execute if score #Game GameStatus matches 1 run playsound yw-pillar:fail_start
execute if score #Game GameStatus matches 1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"游戏进行中..."},{color:"gold",text:"无法开始游戏"}]
function yw-pillar:utils/player/count
# 人数 < 2
execute if score #Game PlayerCount.Ready matches ..1 run playsound yw-pillar:fail_start
execute if score #Game PlayerCount.Ready matches ..1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"准备人数小于"},{color:"aqua",bold:true,text:"2"},{color:"gold",text:"，无法开始游戏"}]
# 人数 > 8
execute if score #Game PlayerCount.Ready matches 9.. run playsound yw-pillar:fail_start
execute if score #Game PlayerCount.Ready matches 9.. run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"准备人数大于"},{color:"aqua",bold:true,text:"8"},{color:"gold",text:"，无法开始游戏"}]