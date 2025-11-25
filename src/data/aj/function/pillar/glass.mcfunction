function aj:pillar/remove_all
execute positioned 98 2 100 rotated 0 0 run function animated_java:pillar_glass/summon {args:{}}
execute as @e[tag=aj.pillar_glass.root] run function animated_java:pillar_glass/animations/animation_model_pillar_wool_1/play