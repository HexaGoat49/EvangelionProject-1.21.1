# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard objectives add aj.idle.frame dummy
scoreboard objectives add aj.walk.frame dummy
scoreboard objectives add aj.open.frame dummy
scoreboard objectives add aj.close.frame dummy
scoreboard objectives add aj.run.frame dummy
scoreboard objectives add aj.jump.frame dummy
scoreboard objectives add aj.jump_run.frame dummy
scoreboard objectives add aj.fall.frame dummy
scoreboard objectives add aj.aim.frame dummy
scoreboard objectives add aj.walk_gun.frame dummy
scoreboard objectives add aj.pre_punch.frame dummy
scoreboard objectives add aj.punch.frame dummy
execute as @e[type=item_display,tag=aj.eva.root] unless score @s aj.is_rig_loaded matches 1 at @s run function animated_java:eva/root/on_load