from beet import Context, Function

def beet_default(ctx: Context):
    for n in range(2, 9):
        commands = []
        commands.append(f'execute as @a[tag=ingame,tag=!out] as @s at @s run function yw-pillar:utils/player/store_inv')

        for i in range(27):
            if n == 2:
                commands.append(f'item replace entity @a[scores={{Number=1}}] inventory.{i} from entity @e[type=chest_minecart,tag=store_inv,scores={{Number=2}},limit=1] container.{i}')
                commands.append(f'item replace entity @a[scores={{Number=2}}] inventory.{i} from entity @e[type=chest_minecart,tag=store_inv,scores={{Number=1}},limit=1] container.{i}')
            else:
                for k in range(1, n + 1):
                    source_num = (k % n) + 1
                    commands.append(f'item replace entity @a[scores={{Number={k}}}] inventory.{i} from entity @e[type=chest_minecart,tag=store_inv,scores={{Number={source_num}}},limit=1] container.{i}')

        for i in range(9):
            if n == 2:
                commands.append(f'item replace entity @a[scores={{Number=1}}] hotbar.{i} from entity @e[type=chest_minecart,tag=store_hotbar,scores={{Number=2}},limit=1] container.{i}')
                commands.append(f'item replace entity @a[scores={{Number=2}}] hotbar.{i} from entity @e[type=chest_minecart,tag=store_hotbar,scores={{Number=1}},limit=1] container.{i}')
            else:
                for k in range(1, n + 1):
                    source_num = (k % n) + 1
                    commands.append(f'item replace entity @a[scores={{Number={k}}}] hotbar.{i} from entity @e[type=chest_minecart,tag=store_hotbar,scores={{Number={source_num}}},limit=1] container.{i}')

        armor_slots = {
            "head": 9, "chest": 10, "legs": 11, "feet": 12
        }
        offhand_slot_num = 13

        if n == 2:
            for slot_name, container_num in armor_slots.items():
                commands.append(f'item replace entity @a[scores={{Number=1}}] armor.{slot_name} from entity @e[type=chest_minecart,scores={{Number=2}},limit=1,tag=store_hotbar] container.{container_num}')
                commands.append(f'item replace entity @a[scores={{Number=2}}] armor.{slot_name} from entity @e[type=chest_minecart,scores={{Number=1}},limit=1,tag=store_hotbar] container.{container_num}')
            
            commands.append(f'item replace entity @a[scores={{Number=1}}] weapon.offhand from entity @e[type=chest_minecart,scores={{Number=2}},limit=1,tag=store_hotbar] container.{offhand_slot_num}')
            commands.append(f'item replace entity @a[scores={{Number=2}}] weapon.offhand from entity @e[type=chest_minecart,scores={{Number=1}},limit=1,tag=store_hotbar] container.{offhand_slot_num}')
        else:
            for k in range(1, n + 1):
                source_num = (k % n) + 1
                for slot_name, container_num in armor_slots.items():
                    commands.append(f'item replace entity @a[scores={{Number={k}}}] armor.{slot_name} from entity @e[type=chest_minecart,scores={{Number={source_num}}},limit=1,tag=store_hotbar] container.{container_num}')
                commands.append(f'item replace entity @a[scores={{Number={k}}}] weapon.offhand from entity @e[type=chest_minecart,scores={{Number={source_num}}},limit=1,tag=store_hotbar] container.{offhand_slot_num}')

        commands.append('execute as @e[type=chest_minecart,tag=store_inv] run data remove entity @s Items')
        commands.append('execute as @e[type=chest_minecart,tag=store_hotbar] run data remove entity @s Items')
        commands.append('kill @e[type=chest_minecart,tag=store_inv]')
        commands.append('kill @e[type=chest_minecart,tag=store_hotbar]')

        func_path = f'yw-pillar:utils/event/inv_exchange/random_num/{n}'
        ctx.data.functions[func_path] = Function(ctx.data.functions[func_path].lines + commands)
