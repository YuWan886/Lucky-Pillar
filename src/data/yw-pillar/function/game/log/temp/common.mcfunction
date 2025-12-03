execute store result storage yw-pillar:log temp.gameid int 1 run scoreboard players get #Game GameID
data modify storage yw-pillar:log temp.time set from block 100 100 100 LastOutput.text
data modify storage yw-pillar:log temp.activity set value {type:"plain_message",width:300,contents:[]}