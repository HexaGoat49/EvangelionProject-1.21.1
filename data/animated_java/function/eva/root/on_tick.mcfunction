# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.eva.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:eva/as_root/pre_tick
execute if entity @s[tag=aj.eva.animation.idle.playing] run function animated_java:eva/animations/idle/zzz/on_tick
execute if entity @s[tag=aj.eva.animation.walk.playing] run function animated_java:eva/animations/walk/zzz/on_tick
execute if entity @s[tag=aj.eva.animation.open_ep.playing] run function animated_java:eva/animations/open_ep/zzz/on_tick
execute on passengers if entity @s[tag=aj.eva.data] run function animated_java:eva/root/zzz/1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function #animated_java:eva/as_root/post_tick