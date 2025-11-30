item replace entity @a[tag=event.17_king_game] armor.head with stick[custom_name={text:"王冠",color:"gold",bold:true,italic:false},lore=[{text:"『欲戴王冠 必承其重』",color:"red",underlined:true}],equippable={slot:"head"},enchantments={binding_curse:1},tooltip_display={hidden_components:["enchantments"]},item_model="yw-pillar:event/crown",attribute_modifiers=[{id:"yw-pillar:crown_1",type:"armor",amount:4,operation:"add_value",slot:"head"},{id:"yw-pillar:crown_2",type:"armor_toughness",amount:4,operation:"add_value",slot:"head"},{"id":"yw-pillar:crown_3",type:"attack_damage",amount:6,operation:"add_value",slot:"head"},{"id":"yw-pillar:crown_4",type:"max_health",amount:10,operation:"add_value",slot:"head"}]]

tellraw @a ["",{text:"[Tips]","color":"gold",bold:true},{selector:"@a[tag=event.17_king_game,tag=!out]",color:"yellow",bold:true},{text:"加冕成功！",color:"green"}]

advancement grant @a[tag=event.17_king_game] only yw-pillar:main/event/17_king_game/be_king
effect clear @a[tag=event.17_king_game] glowing
tag @a remove event.17_king_game

