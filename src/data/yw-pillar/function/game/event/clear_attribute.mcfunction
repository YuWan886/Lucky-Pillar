execute if score #Game EventID matches 12 as @a run attribute @s jump_strength modifier remove yw-pillar:event.broken_leg
execute if score #Game EventID matches 13 unless score #Game RuleID matches 3 as @a run attribute @s attack_damage base reset
execute if score #Game EventID matches 15 as @a run attribute @s entity_interaction_range modifier remove yw-pillar:event.pat_pat
execute if score #Game EventID matches 21 as @a run attribute @s movement_speed modifier remove yw-pillar:event.speed
execute if score #Game EventID matches 22 as @a run attribute @s scale modifier remove yw-pillar:event.mini
execute if score #Game EventID matches 23 as @a run attribute @s scale modifier remove yw-pillar:event.huge

title @a times 10t 2s 10t
tag @a remove event.17_king_game