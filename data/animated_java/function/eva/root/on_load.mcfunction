# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.eva.root] run return 0
execute on passengers if entity @s[tag=aj.eva.data] unless data entity @s {data:{rigHash: '3944892c3d46da6f7e7b35dc1aec359fe25a19804453164906a5e6150b61a6a6'}} on vehicle run function animated_java:eva/root/zzz/0
scoreboard players set @s aj.is_rig_loaded 1