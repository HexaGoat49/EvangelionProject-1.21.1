# Hor-Motion 
execute as @s[scores={nge.stateId=1..3}] at @s run function nge:evas/motion 

# Set state
execute as @s[predicate=!nge:has_motion,tag=!nge.isIdle] run function nge:evas/actions/idle
execute as @s[predicate=nge:has_motion,scores={nge.stateId=1}] run function nge:evas/actions/walk
execute as @s[predicate=nge:is_not_riding,scores={nge.stateId=2}] run function nge:evas/actions/run
# Fall run
#execute at @s as @e[tag=nge.root,scores={aj.fall_run.frame=24}] if score @s nge.id = @p nge.id as @p run function nge:evas/actions/run

# Ride
execute at @s[predicate=nge:is_not_riding] as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

# Head rotation
execute store result score @s nge.horRot run data get entity @s Rotation[0]
execute store result score @s nge.verRot run data get entity @s Rotation[1]
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run scoreboard players operation @p nge.horRot -= @s nge.horRot
# Vertical cutting
scoreboard players set @s[scores={nge.verRot=31..}] nge.verRot 30
scoreboard players set @s[scores={nge.verRot=..-51}] nge.verRot -50

# Destroy
execute at @s[scores={nge.stateId=3}] as @e[tag=nge.root] if score @s nge.id = @p nge.id at @s positioned ^ ^ ^6 run fill ~10 ~ ~10 ~-10 ~-50 ~-10 air replace #nge:destroyable

# Jumping
execute as @e[tag=nge.isJumping] run function nge:evas/actions/jump/main
execute as @e[tag=nge.isJumpRunning] run function nge:evas/actions/jump_run/main
# Ground delay
execute at @s[scores={nge.stateId=3}] as @e[tag=nge.main,nbt={OnGround:1b}] if score @s nge.id = @p nge.id run scoreboard players set @p nge.groundDelay 10
scoreboard players remove @s nge.groundDelay 1
scoreboard players set @s[scores={nge.groundDelay=..-1}] nge.groundDelay 0
