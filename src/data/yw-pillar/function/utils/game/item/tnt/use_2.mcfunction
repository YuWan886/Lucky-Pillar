$execute as @e[type=tnt,distance=..3] run data modify entity @s Motion[0] set from storage yw-pillar:temp motion."$(UUID)".x
$execute as @e[type=tnt,distance=..3] run data modify entity @s Motion[1] set from storage yw-pillar:temp motion."$(UUID)".y
$execute as @e[type=tnt,distance=..3] run data modify entity @s Motion[2] set from storage yw-pillar:temp motion."$(UUID)".z

$data remove storage yw-pillar:temp motion."$(UUID)"