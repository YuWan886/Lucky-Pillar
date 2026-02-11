tag @s add modified
execute if predicate {condition:"random_chance",chance:0.9} run return run return fail
tp @s ~ ~1 ~
data modify entity @s Motion[1] set value 3.6