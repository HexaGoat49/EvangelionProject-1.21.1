# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.eva.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'eva', 'function_path': 'animated_java:eva/animations/pre_punch/set_frame'}
$execute store result storage aj:temp frame int 1 run scoreboard players set @s aj.pre_punch.frame $(frame)
execute at @s run function animated_java:eva/animations/pre_punch/zzz/set_frame with storage aj:temp