function yw-pillar:utils/player/statistic/get_name with entity @s

$data modify entity @e[type=fox,limit=1,tag=rule.3_my_partner,nbt={Trusted:[$(UUID),[I;0,0,0,0]]}] CustomName.text set from storage yw-pillar:statistics temp."$(UUID)".name

$data remove storage yw-pillar:statistics temp."$(UUID)"