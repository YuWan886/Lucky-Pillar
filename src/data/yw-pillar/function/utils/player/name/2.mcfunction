$data modify storage yw-pillar:temp name."$(UUID)" set value {UUID:$(UUID)}

$data modify storage yw-pillar:temp name."$(UUID)".name set string entity @s SelectedItem.components."minecraft:writable_book_content".pages.[0].raw
$execute if data entity @s SelectedItem.components."minecraft:writable_book_content".pages.[1] run data modify storage yw-pillar:temp name."$(UUID)".color set string entity @s SelectedItem.components."minecraft:writable_book_content".pages.[1].raw

item replace entity @s hotbar.6 with writable_book[custom_name={text:"修改名称",color:"gold",italic:false},custom_data={item:"hotbar_item"}]
$function yw-pillar:utils/player/name/3 with storage yw-pillar:temp name."$(UUID)"