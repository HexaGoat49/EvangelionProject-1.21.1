# Temporal
data modify entity @e[limit=1,tag=aj.eva.bone.door] view_range set value 16.0f
#data modify entity @e[limit=1,tag=aj.eva.bone.entry_plug] view_range set value 16.0f
data modify entity @e[limit=1,tag=aj.eva.bone.entry_plug] item.components."minecraft:item_model" set value "animated_java:blueprint/eva/entry_plug"


execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/open/tween {to_frame: 0, duration: 1}

ride @s dismount
execute at @s as @e[tag=nge.chair] if score @s nge.id = @p nge.id run ride @p mount @s

attribute @s camera_distance base set 4
effect clear @s
scoreboard players set @s nge.id 0
tag @s remove nge.pilot
