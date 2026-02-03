from beet import Context, TagFile
from beet.core.utils import JsonDict

def beet_default(ctx: Context):
    mod_items = [
        # 农夫乐事
        "#farmersdelight:tools/knives",
        "#farmersdelight:meals",
        "#farmersdelight:drinks",
        "#farmersdelight:feasts",
        "farmersdelight:skillet",
        "farmersdelight:rope",
        "farmersdelight:tomato_sauce",
        "farmersdelight:dog_food",
        "farmersdelight:fruit_salad",
        "farmersdelight:nether_salad",
        "farmersdelight:pie_crust",
        "farmersdelight:apple_pie",
        "farmersdelight:sweet_berry_cheesecake",
        "farmersdelight:chocolate_pie",
        # 突变生物
        "mutantmonsters:chemical_x",
        "mutantmonsters:endersoul_hand",
        "mutantmonsters:hulk_hammer",
        "mutantmonsters:mutant_skeleton_chestplate",
        "mutantmonsters:mutant_skeleton_boots",
        "mutantmonsters:mutant_skeleton_skull",
        "mutantmonsters:mutant_skeleton_leggings",
        "mutantmonsters:creeper_minion_spawn_egg",
        "mutantmonsters:mutant_creeper_spawn_egg",
        "mutantmonsters:mutant_enderman_spawn_egg",
        "mutantmonsters:mutant_skeleton_spawn_egg",
        "mutantmonsters:mutant_snow_golem_spawn_egg",
        "mutantmonsters:mutant_zombie_spawn_egg",
        "mutantmonsters:spider_pig_spawn_egg"
    ]
    tag_content: JsonDict = {
        "values": [{"id": item_id, "required": False} for item_id in mod_items]
    }
    ctx.data.item_tags["yw-pillar:mod_item"] = TagFile(tag_content) # type: ignore
