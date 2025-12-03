advancement revoke @s only yw-pillar:game/death/fall
execute if score #Game GameStatus matches 0 run return fail

tag @s add dead

loot replace entity @s enderchest.0 loot yw-pillar:log/death/fall
execute on attacker run loot replace entity @a[tag=dead,sort=nearest,limit=1] enderchest.1 loot yw-pillar:log/death/killedby
function yw-pillar:game/log/temp/death

tag @s remove dead