# 开发者
execute if score #Game Dev matches 1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"当前处于开发者模式..."},{color:"gold",text:"无法开始游戏"}]
execute if score #Game Dev matches 1 run playsound yw-pillar:fail_start
# 游戏进行中
execute if score #Game GameStatus matches 1 run playsound yw-pillar:fail_start
execute if score #Game GameStatus matches 1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"游戏进行中..."},{color:"gold",text:"无法开始游戏"}]
function yw-pillar:utils/player/count
# 人数 < 2
execute if score #Game PlayerCount.Ready matches ..1 run playsound yw-pillar:fail_start
execute if score #Game PlayerCount.Ready matches ..1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"准备人数小于"},{color:"aqua",bold:true,text:"2"},{color:"gold",text:"，无法开始游戏"}]
# 人数 > 12
execute if score #Game PlayerCount.Ready matches 13.. run playsound yw-pillar:fail_start
execute if score #Game PlayerCount.Ready matches 13.. run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"准备人数大于"},{color:"aqua",bold:true,text:"13"},{color:"gold",text:"，无法开始游戏"}]