function nge:effects
attribute @p camera_distance base set 24
tag @p add nge.pilot
tag @p remove nge.onSequence
ride @p dismount
execute as @p run function nge:effects
scoreboard players set @p nge.stateId 0
# Temporal
data modify entity @e[limit=1,tag=aj.eva.bone.door] view_range set value 0.0f
#data modify entity @e[limit=1,tag=aj.eva.bone.entry_plug] view_range set value 0.0f
data modify entity @e[limit=1,tag=aj.eva.bone.entry_plug] item.components."minecraft:item_model" set value "minecraft:interior/int1"

function animated_java:eva/animations/idle/play
