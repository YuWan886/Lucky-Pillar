execute unless score #Game GameStatus matches 1 run return fail

scoreboard players set #Game PlayerCount.Alive 0
execute as @a[tag=ingame,tag=!out] run scoreboard players add #Game PlayerCount.Alive 1
execute if score #Game GameMode matches 1 if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/individual
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Alive matches 2 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/team/check
execute if score #Game GameMode matches 2 if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/team/run
execute if score #Game GameMode matches 3 run function yw-pillar:game/progress/win/red_vs_blue/check

function yw-pillar:game/sidebar/ingame