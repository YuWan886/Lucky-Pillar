# 准备物品
execute as @s[tag=!ready] unless items entity @s hotbar.4 white_dye run item replace entity @s hotbar.4 with white_dye[custom_name={text:"旁观",color:"dark_gray",italic:false},item_model="yw-pillar:lobby/spectator",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
execute as @s[tag=ready] unless items entity @s hotbar.4 white_dye run item replace entity @s hotbar.4 with white_dye[custom_name={text:"已准备",color:"green",italic:false},item_model="yw-pillar:lobby/ready",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
# 对局记录
execute as @s unless items entity @s hotbar.7 white_dye run item replace entity @s hotbar.7 with white_dye[custom_name={text:"对局记录",color:"aqua",italic:false},item_model="yw-pillar:lobby/log",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"item.book.page_turn"}]
# 战绩
execute as @s unless items entity @s hotbar.8 white_dye run item replace entity @s hotbar.8 with white_dye[custom_name={text:"查看战绩",color:"gold",italic:false},item_model="yw-pillar:lobby/statistic",custom_data={"item":"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"block.enchantment_table.use"}]
