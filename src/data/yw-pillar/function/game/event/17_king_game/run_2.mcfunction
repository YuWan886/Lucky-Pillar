tellraw @a ["",{text:"[Tips]","color":"gold",bold:true},{selector:"@a[tag=event.17_king_game,tag=!out]",color:"yellow",bold:true},{text:"卫冕失败！",color:"red"}]
effect clear @a[tag=event.17_king_game]
tag @a remove event.17_king_game

effect give @a[tag=ingame,tag=!out] resistance 30 0 true
effect give @a[tag=ingame,tag=!out] strength 30 0 true
effect give @a[tag=ingame,tag=!out] regeneration 10 0 true
effect give @a[tag=ingame,tag=!out] saturation 5 0 true