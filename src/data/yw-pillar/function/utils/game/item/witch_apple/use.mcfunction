advancement revoke @s only yw-pillar:game/item/witch_apple

execute if predicate {condition:"random_chance",chance:0.5} run return run function yw-pillar:utils/game/item/witch_apple/good
function yw-pillar:utils/game/item/witch_apple/bad