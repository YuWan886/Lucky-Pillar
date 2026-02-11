# 准备物品
execute as @s[tag=!ready] run item replace entity @s hotbar.4 with white_dye[custom_name={text:"旁观",color:"dark_gray",italic:false},item_model="yw-pillar:lobby/spectator",custom_data={item:"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
execute as @s[tag=ready] run item replace entity @s hotbar.4 with white_dye[custom_name={text:"已准备",color:"green",italic:false},item_model="yw-pillar:lobby/ready",custom_data={item:"hotbar_item"},consumable={animation:"none",consume_seconds:0.05,has_consume_particles:false,sound:"ui.button.click"}]
# 称号
execute as @s unless items entity @s hotbar.6 writable_book run item replace entity @s hotbar.6 with writable_book[custom_name={text:"修改称号",color:"gold",italic:false},custom_data={item:"hotbar_item"}]
execute as @s if items entity @s weapon.mainhand writable_book[writable_book_content~{pages:{}},custom_data~{item:"hotbar_item"}] run function yw-pillar:utils/player/name/1
# 对局记录
execute as @s run item replace entity @s hotbar.7 with white_dye[custom_name={text:"对局记录",color:"aqua",italic:false},item_model="yw-pillar:lobby/log",custom_data={item:"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"item.book.page_turn"}]
# 战绩
execute as @s run item replace entity @s hotbar.8 with white_dye[custom_name={text:"查看战绩",color:"gold",italic:false},item_model="yw-pillar:lobby/statistic",custom_data={item:"hotbar_item"},consumable={animation:"none",consume_seconds:0.1,has_consume_particles:false,sound:"block.enchantment_table.use"}]

execute as @s if items entity @s player.cursor white_dye[custom_data~{item:"hotbar_item"}] run item replace entity @s player.cursor with air
execute as @s if items entity @s player.cursor writable_book[custom_data~{item:"hotbar_item"}] run item replace entity @s player.cursor with air