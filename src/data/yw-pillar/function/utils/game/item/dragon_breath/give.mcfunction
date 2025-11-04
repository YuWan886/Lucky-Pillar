advancement revoke @s only yw-pillar:game/item/dragon_breath/give

clear @s dragon_breath[!consumable] 1

give @s dragon_breath[item_name={text:"龙息"},lore=[{text:"右键发射",color:"gray",italic:false}],consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"entity.ender_dragon.shoot"},custom_data={"item":"dragon_breath"}]