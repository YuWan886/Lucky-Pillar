function yw-pillar:utils/player/statistic/get_name with entity @s

$data modify entity @e[type=wolf,limit=1,nbt={Owner:$(UUID)}] CustomName.text set from storage yw-pillar:statistics temp."$(UUID)".name

$data remove storage yw-pillar:statistics temp."$(UUID)"