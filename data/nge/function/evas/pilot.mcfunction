# Ride main when dismounted
execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

# Ground delay
execute at @s as @e[tag=nge.hitbox,predicate=nge:should_fall] if score @s nge.id = @p nge.id run scoreboard players set @p nge.groundDelay 26
scoreboard players remove @s nge.groundDelay 1
scoreboard players set @s[scores={nge.groundDelay=..-1}] nge.groundDelay 0
# Save vertical motion on nge.y
execute at @s as @e[tag=nge.hitbox] if score @s nge.id = @p nge.id store result score @p nge.y run data get entity @s Motion[1] 100.0

# Move pointer Y to pilot
execute at @s as @e[tag=nge.pointer] if score @s nge.id = @p nge.id store result score @p nge.y run data modify entity @s Pos[1] set from entity @p Pos[1]
# Set states
execute at @s as @s run function nge:evas/states/main
# Motion (It has to be at the end)
execute as @s[scores={nge.stateId=0..3}] at @s run function nge:evas/motion/main


# Rotation
function nge:evas/rotation/main