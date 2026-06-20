# Executed on root, at player position

execute if entity @p[scores={nge.stateId=0}] run function nge:evas/states/set/idle
execute if entity @p[scores={nge.stateId=1}] run function nge:evas/states/set/walk
execute if entity @p[scores={nge.stateId=2}] run function nge:evas/states/set/backwards
execute if entity @p[scores={nge.stateId=3}] run function nge:evas/states/set/run
execute if entity @p[scores={nge.stateId=4}] run function nge:evas/states/set/jump
execute if entity @p[scores={nge.stateId=5}] run function nge:evas/states/set/fall
execute if entity @p[scores={nge.stateId=6}] run function nge:evas/states/set/floor

execute if entity @p[scores={nge.stateId=..-1}] run function animated_java:eva/animations/pause_all