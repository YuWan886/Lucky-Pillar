$data modify storage yw-pillar:temp motion."$(UUID)".input set value {UUID:$(UUID),step:0.8}

$function yw-pillar:utils/other/motion/result with storage yw-pillar:temp motion."$(UUID)".input