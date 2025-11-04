tellraw @a ["","\n\n\n\n=-------------------------=\n",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"已修改设置！",color:"aqua"},"\n"]
$tellraw @a ["",{text:"      物品间隔："},{nbt:"time.loot_time",storage:"yw-pillar:settings",color:"red"},"->",{text:"$(loot_time)",color:"green"}]
$tellraw @a ["",{text:"      事件间隔："},{nbt:"time.event_time",storage:"yw-pillar:settings",color:"red"},"->",{text:"$(event_time)",color:"green"}]
$tellraw @a ["",{text:"      边界收缩："},{nbt:"time.border_time",storage:"yw-pillar:settings",color:"red"},"->",{text:"$(border_time)",color:"green"}]
$tellraw @a ["",{text:"      准备时间："},{nbt:"time.begin_time",storage:"yw-pillar:settings",color:"red"},"->",{text:"$(begin_time)",color:"green"}]
tellraw @a "\n=-------------------------="

$data modify storage yw-pillar:settings time set value \
{\
    loot_time:$(loot_time),\
    event_time:$(event_time),\
    border_time:$(border_time),\
    begin_time:$(begin_time)\
}

function yw-pillar:game/sidebar/lobby


