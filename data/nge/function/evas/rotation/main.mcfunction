# Executed as pilot at pilot

# Set rotation for unfixed states
execute at @s[scores={nge.stateId=1..3}] as @e[tag=nge.root] if score @s nge.id = @p nge.id run data modify entity @s Rotation[0] set from entity @p Rotation[0]

# Get global rotation
execute store result score @s nge.horRot run data get entity @s Rotation[0]
execute store result score @s nge.verRot run data get entity @s Rotation[1]
# Get local rotation
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function nge:evas/rotation/get_local

# Fix using main
execute at @s as @e[tag=nge.main] if score @s nge.id = @p nge.id run function nge:evas/rotation/fix_main