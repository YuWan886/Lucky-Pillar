scoreboard players set @s LeaveGame 0

execute as @s[tag=ingame,tag=!out] if score #Game GameStatus matches 1 run gamemode survival @s
execute as @s[tag=ingame,tag=!out] if score #Game GameStatus matches 1 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s"},{text:"又回来啦！",color:"light_purple"}]
execute as @s[tag=ingame] if score #Game GameStatus matches 0 run function yw-pillar:utils/player/join/before_game

execute as @s[tag=out] if score #Game GameStatus matches 1 run gamemode spectator @s

execute as @s[tag=spectator] if score #Game GameStatus matches 1 run tp @s @r[tag=ingame,tag=!out]
execute as @s[tag=spectator] if score #Game GameStatus matches 0 run function yw-pillar:utils/player/join/before_game