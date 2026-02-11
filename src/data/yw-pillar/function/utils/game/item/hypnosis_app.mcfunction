advancement revoke @s only yw-pillar:game/item/hypnosis_app

execute as @a[tag=ingame,tag=!out,distance=0.01..,sort= random,limit=1] run tag @s add hypnosis
# execute as @a[tag=debug,sort= random,limit=1] run tag @s add hypnosis

tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@a[tag=hypnosis]"},{text:"被",color:"light_purple"},{selector:"@s"},{text:"催眠了❤~",color:"light_purple"}]
execute at @a[tag=hypnosis] rotated 0 0 run function animated_java:item_hypnosis_app/summon {args:{}}
execute as @e[tag=aj.item_hypnosis_app.root] run function animated_java:item_hypnosis_app/animations/animation_model_hypnosis_app/play
execute as @a[tag=hypnosis] run effect give @s slowness 10
execute as @a[tag=hypnosis] run effect give @s mining_fatigue 15 2

tag @a[tag=hypnosis] remove hypnosis

