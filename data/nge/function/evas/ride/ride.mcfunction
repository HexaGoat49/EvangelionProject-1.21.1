function nge:evas/ride/dismount

# Ride closest chair
execute at @s run ride @s mount @n[tag=nge.chair]
# Get id from chair
execute at @s store result score @s nge.id run scoreboard players get @n[tag=nge.chair] nge.id
tag @s add nge.onSequence
# Closing animation on respective root
execute at @s as @e[tag=nge.root] if score @s nge.id = @p nge.id run function animated_java:eva/animations/close/play
