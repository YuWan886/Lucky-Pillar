data modify storage yw-pillar:temp system.time.hour set string block 100 100 100 LastOutput.text 1 3
data modify storage yw-pillar:temp system.time.min set string block 100 100 100 LastOutput.text 4 6
data modify storage yw-pillar:temp system.time.sec set string block 100 100 100 LastOutput.text 8 10

execute store result score #Game SysTime.Hour run data get storage yw-pillar:temp system.time.hour
execute store result score #Game SysTime.Min run data get storage yw-pillar:temp system.time.min
execute store result score #Game SysTime.Sec run data get storage yw-pillar:temp system.time.sec

schedule function yw-pillar:schedule/system_time 1s