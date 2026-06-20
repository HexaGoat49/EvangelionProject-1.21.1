execute as @e[tag=nge.pilot] at @s run function nge:evas/pilot
execute as @e[tag=nge.main] at @s run function nge:evas/main

#execute as @a at @s run function nge:evas/motion/main
execute as @a[tag=nge.onSequence] at @s run function nge:evas/ride/step
