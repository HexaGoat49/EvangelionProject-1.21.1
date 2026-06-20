# Executed on the main entity

### Main entity position calculation ###
# Tp to hitbox
execute at @e[tag=nge.hitbox] if score @n[tag=nge.hitbox] nge.id = @s nge.id run tp @s ~ ~ ~
# Get Y value and floor rotation
#execute store result score @s nge.y run data get entity @s Pos[1] 100
#execute as @e[tag=nge.floor] store result score @s nge.y run data get entity @s Rotation[1] 62.5

# Calculate new Y value and insert it
#execute at @e[tag=nge.floor] if score @n[tag=nge.floor] nge.id = @s nge.id run scoreboard players operation @s nge.y -= @n[tag=nge.floor] nge.y
#execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s nge.y
