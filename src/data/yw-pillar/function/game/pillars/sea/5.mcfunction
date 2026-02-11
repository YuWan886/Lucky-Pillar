place template yw-pillar:pillar/sea/5 -20 0 -20
fill 0 1 12 0 29 12 prismarine_bricks
fill 11 1 4 11 29 4 prismarine_bricks
fill -11 1 4 -11 29 4 prismarine_bricks
fill 7 1 -10 7 29 -10 prismarine_bricks
fill -7 1 -10 -7 29 -10 prismarine_bricks

place template yw-pillar:cage -1 30 11
place template yw-pillar:cage 10 30 3
place template yw-pillar:cage -12 30 3
place template yw-pillar:cage 6 30 -11
place template yw-pillar:cage -8 30 -11

tp @a[scores={Number=1}] 0 31 12 180 0
tp @a[scores={Number=2}] 11 31 4 90 0
tp @a[scores={Number=3}] -11 31 4 -90 0
tp @a[scores={Number=4}] 7 31 -10 30 0
tp @a[scores={Number=5}] -7 31 -10 -30 0

give @a[tag=ingame] fishing_rod[unbreakable={},enchantments={lure:5},tooltip_display={hidden_components:["unbreakable"]}]
