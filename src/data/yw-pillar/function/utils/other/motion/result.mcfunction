
summon marker ^ ^ ^ {Tags:["mr.motion"]}

execute store result score $Motion1 Pos.X run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[0] 10000
execute store result score $Motion1 Pos.Y run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[1] 10000
execute store result score $Motion1 Pos.Z run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[2] 10000

$tp @e[type=marker,distance=..1,tag=mr.motion,limit=1] ^ ^ ^$(step)

execute store result score $Motion2 Pos.X run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[0] 10000
execute store result score $Motion2 Pos.Y run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[1] 10000
execute store result score $Motion2 Pos.Z run data get entity @e[type=marker,distance=..1,tag=mr.motion,limit=1] Pos[2] 10000

scoreboard players operation $Motion2 Pos.X -= $Motion1 Pos.X
scoreboard players operation $Motion2 Pos.Y -= $Motion1 Pos.Y
scoreboard players operation $Motion2 Pos.Z -= $Motion1 Pos.Z

$execute store result storage yw-pillar:temp motion."$(UUID)".x double 0.0001 run scoreboard players get $Motion2 Pos.X
$execute store result storage yw-pillar:temp motion."$(UUID)".y double 0.0001 run scoreboard players get $Motion2 Pos.Y
$execute store result storage yw-pillar:temp motion."$(UUID)".z double 0.0001 run scoreboard players get $Motion2 Pos.Z

kill @e[type=marker,distance=..1,tag=mr.motion,limit=1]