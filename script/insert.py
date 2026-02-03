from beet import Context, Function
import time

def beet_default(ctx: Context):
    function = ctx.data.functions["yw-pillar:init"]
    insert_thing = f"""
data modify storage yw-pillar:settings game set value \
{{\
    game_mode:"单人",\
    map_name:"羊毛",\
    map_id:"wool",\
    player_count:0,\
    event_name:"",\
    rule_name:"",\
    rule_id:0,\
    version:"{ctx.project_version}",\
    mc_version:"{ctx.minecraft_version}",\
    release_time:"{time.strftime("%Y.%m.%d")}"\
}}
data modify storage yw-pillar:system info set value \
{{\
    version:"v{ctx.project_version}",\
    mc_version:"{ctx.minecraft_version}",\
    release_time:"{time.strftime("%Y.%m.%d")}"\
}}
    """
    function.lines.insert(9, insert_thing)

    ctx.data.filter["block"].append({"namespace": "minecraft","path":"advancement"})
    ctx.data.filter["block"].append({"namespace": "farmersdelight","path":"advancement"})
    ctx.data.filter["block"].append({"namespace": "mutantmonsters","path":"advancement"})
