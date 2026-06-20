# Executed at player position, as main entity
execute if entity @p[scores={aj.jump.frame=20}] run data modify entity @s Motion[1] set value 2.1d

execute store result entity @s Motion[0] double 0.003 run scoreboard players get @p nge.m0
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @p nge.m2

function nge:evas/slow_down