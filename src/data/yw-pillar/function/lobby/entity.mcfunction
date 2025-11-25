kill @e[tag=play_button]
summon item_display 102 2 100 {item:{id:"stick",components:{item_model:"yw-pillar:play_button"}},Tags:["play_button","i_dis.play_button"],Passengers:[{id:"interaction",Tags:["play_button","ita.play_button"],height:0.7,width:0.7}],transformation:{translation:[0f,0.5f,0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f]}}

kill @e[tag=t_dis.settings]
summon text_display 100 2.5 100 {text:["",{text:"点我设置",color:"gold"}],billboard:"center",Tags:["t_dis.settings"]}

kill @e[tag=ita.settings]
summon interaction 100 1 100 {height:1.2,Tags:["ita.settings"]}

kill @e[tag=lobby.logo]
summon item_display 100 3 109 {item:{id:"white_dye",components:{item_model:"yw-pillar:logo"}},Tags:["lobby.logo"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[4f,4f,4f],right_rotation:[0f,0f,0f,1f]}}

kill @e[tag=lobby.bili]
summon item_display 108 2 98 {item:{id:"white_dye",components:{item_model:"yw-pillar:bili"}},Tags:["lobby.bili"],Rotation:[90,0],Passengers:[{id:"interaction",Tags:["ita.bili","lobby.bili"]}]}

kill @e[tag=lobby.qq]
summon item_display 108 2 100 {item:{id:"white_dye",components:{item_model:"yw-pillar:qq"}},Tags:["lobby.qq"],Rotation:[90,0],Passengers:[{id:"interaction",Tags:["ita.qq","lobby.qq"]}]}

kill @e[tag=lobby.bug]
summon item_display 108 2 102 {item:{id:"white_dye",components:{item_model:"yw-pillar:bug"}},Tags:["lobby.bug"],Rotation:[90,0],Passengers:[{id:"interaction",Tags:["ita.bug","lobby.bug"]}]}

kill @e[tag=lobby.hahaha]
summon item_frame 100 2 92 {Item:{id:"stick",components:{custom_model_data:{strings:["hahaha"]}}},Facing:3b,Fixed:true,Invisible:true,Tags:["lobby.hahaha"]}

execute as @e[tag=aj.player_yuwan.root] run function animated_java:player_yuwan/remove/this
execute positioned 100 1 108 rotated -180 0 run function animated_java:player_yuwan/summon {args:{}}