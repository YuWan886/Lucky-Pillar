advancement revoke @s only yw-pillar:game/item/tnt/give

clear @s tnt[!consumable] 1

give @s tnt[item_name={text:"TNT"},lore=[{text:"长按右键发射",color:"gray",italic:false}],consumable={animation:"none",consume_seconds:1,has_consume_particles:false,sound:{sound_id:""}},custom_data={"item":"tnt"}]