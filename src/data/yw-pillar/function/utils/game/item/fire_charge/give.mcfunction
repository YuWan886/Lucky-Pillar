advancement revoke @s only yw-pillar:game/item/fire_charge/give

clear @s fire_charge[!consumable] 1

give @s fire_charge[item_name={text:"火焰弹"},lore=[{text:"右键发射",color:"gray",italic:false}],consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"item.firecharge.use"},custom_data={"item":"fire_charge"}]