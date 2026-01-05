from beet import Context, Function

def beet_default(ctx: Context):
    for n in range(2, 25):
        commands = []

        for k in range(1,n+1):
            commands.append(f"execute as @r[tag=ingame,tag=!out,scores={{Number=0}}] run scoreboard players set @s Number {k}")
        
        commands.append(f'execute as @a[tag=ingame,tag=!out] as @s at @s run function yw-pillar:utils/player/store_location')

        if n == 2:
            commands.append(f'tp @a[scores={{Number=1}}] @e[type=marker,tag=store_location,scores={{Number=2}},limit=1]')
            commands.append(f'tp @a[scores={{Number=2}}] @e[type=marker,tag=store_location,scores={{Number=1}},limit=1]')
        else:
            for k in range(1, n + 1):
                source_num = (k % n) + 1
                commands.append(f'tp @a[scores={{Number={k}}}] @e[type=marker,tag=store_location,scores={{Number={source_num}}},limit=1]')

        commands.append('kill @e[type=marker,tag=store_location]')

        func_path = f'yw-pillar:utils/event/location_exchange/random_num/{n}'
        ctx.data.functions[func_path] = Function(commands)
