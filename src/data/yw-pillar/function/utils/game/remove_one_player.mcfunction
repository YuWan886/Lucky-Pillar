scoreboard players remove #Game PlayerCount.Alive 1
execute if score #Game PlayerCount.Alive matches 1 as @a[tag=ingame,tag=!out] run function yw-pillar:game/progress/win/individual

