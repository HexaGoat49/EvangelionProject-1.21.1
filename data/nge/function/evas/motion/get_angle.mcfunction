# Executed on the pointer, at pilot position

tp @s ~ ~ ~
# Primary axis
execute if entity @p[predicate=nge:forward] rotated ~ 0 run tp @s ^ ^ ^1
execute if entity @p[predicate=nge:backward] rotated ~ 0 run tp @s ^ ^ ^-1
# Secondary axis
execute if entity @p[predicate=nge:left] rotated ~ 0 positioned as @s run tp @s ^1 ^ ^
execute if entity @p[predicate=nge:right] rotated ~ 0 positioned as @s run tp @s ^-1 ^ ^

function nge:evas/motion/get_vector