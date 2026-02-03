advancement revoke @s only yw-pillar:game/item/yanpai

playsound yw-pillar:yanpai master @a ~ ~ ~ 10 1 0.4
execute store result score @s YanPai run random value 1..8

# 牛肉
execute if score @s YanPai matches 1 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{sprite:"item/cooked_beef",atlas:"items",object:"atlas"},"x5"]
execute if score @s YanPai matches 1 run give @s cooked_beef 5
# 铁剑
execute if score @s YanPai matches 2 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{sprite:"item/iron_sword",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 2 run give @s iron_sword 1
# 橡木原木
execute if score @s YanPai matches 3 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{sprite:"block/oak_log",atlas:"blocks",object:"atlas"},"x4"]
execute if score @s YanPai matches 3 run give @s oak_log 4
# 铁胸甲
execute if score @s YanPai matches 4 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{sprite:"item/iron_chestplate",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 4 run give @s iron_chestplate 1
# 再生药水
execute if score @s YanPai matches 5 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{sprite:"item/potion",atlas:"items",object:"atlas"},"x1"]
execute if score @s YanPai matches 5 run give @s potion[potion_contents={custom_effects:[{id:"regeneration",duration:900}]}] 1
# 再来一次
execute if score @s YanPai matches 6 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{text:"再来一次！",color:"green"}]
execute if score @s YanPai matches 6 run give @s stick[custom_name={text:"牌",color:"gold",bold:1b,italic:0b},lore=[{text:"“我要验牌”",color:"gray"}],item_model="yw-pillar:special/card",consumable={animation:"none",consume_seconds:0.01,has_consume_particles:0b,sound:{sound_id:""}},custom_data={item:"yanpai"}]
# 谢谢回顾
execute if score @s YanPai matches 7..8 run tellraw @a ["",{text:"[Tips]",color:"gold",bold:true},{selector:"@s",bold:true},{text:"验出了",color:"yellow"},{text:"谢谢回顾！",color:"green"}]