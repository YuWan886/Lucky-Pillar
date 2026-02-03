# 开发者
execute if score #Game Dev matches 1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"当前处于开发者模式..."},{color:"gold",text:"无法开始游戏"}]
execute if score #Game Dev matches 1 run playsound yw-pillar:fail_start
# 游戏进行中
execute if score #Game GameStatus matches 1 run playsound yw-pillar:fail_start
execute if score #Game GameStatus matches 1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{color:"gold",text:"游戏进行中..."},{color:"gold",text:"无法开始游戏"}]
# 计算 player_count
function yw-pillar:utils/player/count

## 单人模式
# 人数 < 2
execute if score #Game GameMode matches 1 if score #Game PlayerCount.Ready matches ..1 run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 1 if score #Game PlayerCount.Ready matches ..1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"单人",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数小于"},{color:"aqua",bold:true,text:"2"},{color:"gold",text:"，无法开始游戏"}]
# 人数 > 12
execute if score #Game GameMode matches 1 if score #Game PlayerCount.Ready matches 13.. run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 1 if score #Game PlayerCount.Ready matches 13.. run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"单人",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数大于"},{color:"aqua",bold:true,text:"12"},{color:"gold",text:"，无法开始游戏"}]

## 双人模式
# 人数 < 3
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Ready matches ..2 run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Ready matches ..2 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"双人",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数小于"},{color:"aqua",bold:true,text:"3"},{color:"gold",text:"，无法开始游戏"}]
# 人数 > 24
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Ready matches 25.. run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Ready matches 25.. run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"双人",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数大于"},{color:"aqua",bold:true,text:"24"},{color:"gold",text:"，无法开始游戏"}]

## 红蓝对抗
# 人数 < 2
execute if score #Game GameMode matches 3 if score #Game PlayerCount.Ready matches ..1 run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 3 if score #Game PlayerCount.Ready matches ..1 run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"红蓝对抗",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数小于"},{color:"aqua",bold:true,text:"2"},{color:"gold",text:"，无法开始游戏"}]
# 人数 > 24
execute if score #Game GameMode matches 3 if score #Game PlayerCount.Ready matches 25.. run playsound yw-pillar:fail_start
execute if score #Game GameMode matches 3 if score #Game PlayerCount.Ready matches 25.. run return run tellraw @a ["",{text:"[Error]",color:"red",bold:true},{text:"红蓝对抗",color:"dark_purple",bold:true},{text:"模式下：",color:"gold"},{color:"gold",text:"准备人数大于"},{color:"aqua",bold:true,text:"24"},{color:"gold",text:"，无法开始游戏"}]