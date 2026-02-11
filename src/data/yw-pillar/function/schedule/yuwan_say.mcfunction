execute store result score $Say math run random value 1..20

execute if score $Say math matches 1 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"感谢游玩本地图,祝你游玩愉快！！",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 2 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"如果你有什么意见,或者有什么话想和作者说,可以点击下面的链接加入官方群聊",color:"yellow",shadow_color:-458752},{"text":"\n[Discord]",color:"blue",bold:true,underlined:true,click_event:{action:"open_url",url:"https://discord.gg/tJT3a95Y8y"}},{"text":"[QQ]",color:"white",bold:true,underlined:true,click_event:{action:"open_url",url:"https://qm.qq.com/q/nEwVc0Wb5I"}}]
execute if score $Say math matches 3 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"幸运之柱第一个版本是MC25w42a",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 4 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"不笑的是gay",color:"yellow",shadow_color:-458752,hover_event:{action:"show_text",value:{"text":"骗你的,笑的也是",color:"red"}}}]
execute if score $Say math matches 5 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"我在幸运之柱中累计死亡了444次,真是太好玩了,你也快来试试吧！",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 6 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"他们为什么要打架？",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 7 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"那我问你...",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 8 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"那你问我...",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 9 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"hyw",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 10 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"这么强？！！",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 11 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"我也要一起死吗？",color:"yellow",shadow_color:-458752},"\n\n \uE400\n\n\n\n\n\n\n"]
execute if score $Say math matches 12 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"随橙想...",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 13 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"巴巴博弈",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 14 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"哈基米,南北路多",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 15 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"这期神了",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 16 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"这期拉了",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 17 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"你已急哭",color:"yellow",shadow_color:-458752},"\n\n \uE401\n\n\n\n\n\n\n"]
execute if score $Say math matches 18 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"你拉我,你拉我共创啊~(长白山音)",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 19 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"我的刀盾",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 19 at @a run playsound yw-pillar:meme.wddd master @a
execute if score $Say math matches 20 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"比比拉布",color:"yellow",shadow_color:-458752}]
execute if score $Say math matches 20 at @a run playsound yw-pillar:meme.bblb master @a
execute if score $Say math matches 21 run tellraw @a ["",{"text":"\n[鱼丸说]",color:"light_purple",bold:true},{"text":"这波贪了,应该留到春晚看的",color:"yellow",shadow_color:-458752}]

schedule function yw-pillar:schedule/yuwan_say 1200s