from beet import Context, Function
import time

def beet_default(ctx: Context):
    function = ctx.data.functions["yw-pillar:init"]
    insert_thing = f"""
data modify storage yw-pillar:settings game set value \
{{\
    current:1,\
    map_name:"羊毛",\
    map_id:"wool",\
    previous:1,\
    next:2,\
    player_count:0,\
    event_name:"",\
    rule_name:"",\
    rule_id:0,\
    version:"{ctx.project_version}",\
    mc_version:"{ctx.meta.get("mc_version")}",\
    release_time:"{time.strftime("%Y.%m.%d")}"\
}}
data modify storage yw-pillar:system info set value \
{{\
    version:"{ctx.project_version}",\
    mc_version:"{ctx.meta.get("mc_version")}",\
    release_time:"{time.strftime("%Y.%m.%d")}"\
}}
    """
    function.lines.insert(20, insert_thing)

    ctx.data.filter["block"].append({"namespace": "minecraft","path":"advancement"})
