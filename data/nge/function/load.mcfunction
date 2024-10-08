tellraw @a {"text":"Evangelion Datapack loaded successfully","color":"#9900FF"}
playsound entity.player.levelup master @a ~ ~ ~ 1 1 1

team add noColl
team modify noColl collisionRule never

data modify storage nge:rotation pre set value {to_frame: 30, duration: 10}
data modify storage nge:rotation punch set value {to_frame: 30, duration: 3}

scoreboard objectives add nge.id dummy
scoreboard objectives add nge.stateId dummy
scoreboard objectives add nge.groundDelay dummy
scoreboard objectives add nge.water dummy
scoreboard objectives add nge.punchTime dummy
# Head rotation
scoreboard objectives add nge.horRot dummy
scoreboard objectives add nge.verRot dummy
# Motion
scoreboard objectives add nge.speed dummy
scoreboard objectives add nge.m0 dummy
scoreboard objectives add nge.m2 dummy
# Global
scoreboard objectives add nge.global dummy
scoreboard players set G2 nge.global 2
scoreboard players set G19 nge.global 19
scoreboard players set G20 nge.global 20
scoreboard players set G95 nge.global 95

