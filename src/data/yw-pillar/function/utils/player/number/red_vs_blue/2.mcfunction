$team join Red @a[tag=ready,sort= random,limit=$(player_count_half)]
team join Blue @a[tag=ready,sort=random,team=!Red]

scoreboard players set @a[team=Red] Number 1
scoreboard players set @a[team=Blue] Number 2