execute as @s[tag=ingame,tag=!out] run return run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s"},{text:"又回来啦！",color:"light_purple"}]

tag @s add spectator
tag @s add ready
team join Spectator
tp @s @r[distance=1..]
gamemode spectator @s