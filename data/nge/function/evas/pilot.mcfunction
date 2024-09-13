# Ride and speed up
execute as @s[predicate=nge:is_not_riding,scores={nge.animId=2}] run function nge:evas/actions/run
execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s


# Hor-Motion 
execute as @s store result score @s nge.m0 run data get entity @s Motion[0] 10000
execute as @s store result score @s nge.m2 run data get entity @s Motion[2] 10000
scoreboard players operation @s nge.m0 *= @s nge.speed
scoreboard players operation @s nge.m2 *= @s nge.speed
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[0] double 0.001 run scoreboard players get @s nge.m0
execute store result entity @e[tag=nge.main,limit=1,sort=nearest] Motion[2] double 0.001 run scoreboard players get @s nge.m2


# Set animation
execute as @s[predicate=!nge:has_motion,tag=!nge.isIdle] run function nge:evas/actions/idle
execute as @s[predicate=nge:has_motion,scores={nge.animId=1}] run function nge:evas/actions/walk
# Body rotation
tag @s[predicate=!nge:has_motion] remove nge.rotate


# Head rotation
execute store result score @s nge.horRot run data get entity @s Rotation[0]
execute store result score @s nge.verRot run data get entity @s Rotation[1]
execute as @e[tag=nge.root] at @a if score @s nge.id = @p nge.id run scoreboard players operation @p nge.horRot -= @s nge.horRot
# Vertical cutting
scoreboard players set @s[scores={nge.verRot=31..}] nge.verRot 30
scoreboard players set @s[scores={nge.verRot=..-51}] nge.verRot -50
