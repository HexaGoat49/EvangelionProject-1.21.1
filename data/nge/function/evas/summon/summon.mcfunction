# Temp
kill @e[type=!player]

# Main entity data
summon item_display ~ ~ ~ {Tags:["nge.main.new","nge.copyId"]}

# Pointer entity
summon item_display ~ ~ ~ {Tags:["nge.pointer","nge.copyId"]}

# Hitbox entity data
summon giant ~ ~ ~ {Tags:["nge.hitbox.new","nge.copyId"],Silent:true,PersistenceRequired:true}
execute as @e[tag=nge.hitbox.new] at @s run function nge:effects
attribute @e[tag=nge.hitbox.new,limit=1] minecraft:scale base set 4
attribute @e[tag=nge.hitbox.new,limit=1] minecraft:step_height base set 8
team join noColl @e[tag=nge.hitbox.new]

# Summon and tag AJ model
execute rotated 0 0 run function animated_java:eva/summon {args: {}}
execute as @e[tag=aj.global.entity,tag=!nge.eva] run function nge:evas/summon/tags
execute as @e[tag=aj.eva.bone] run data modify entity @s height set value 60.0f
execute as @e[tag=aj.eva.bone] run data modify entity @s view_range set value 16.0f
# Make AJ model ride main entity
ride @e[tag=aj.eva.root,limit=1,sort=nearest] mount @e[tag=nge.main.new,limit=1,sort=nearest]
# Set ids
scoreboard players operation @e[tag=nge.copyId] nge.id = @e[tag=nge.root,limit=1,sort=nearest] aj.id

# Rename tags
tag @e[tag=nge.main.new] add nge.main
tag @e[tag=nge.main.new] remove nge.main.new

tag @e[tag=nge.hitbox.new] add nge.hitbox
tag @e[tag=nge.hitbox.new] remove nge.hitbox.new

tag @e[tag=nge.copyId] remove nge.copyId
# Anim
# Temp
execute as @e[tag=nge.root] run function animated_java:eva/animations/open/play
# Temp
#function nge:evas/ride/ride