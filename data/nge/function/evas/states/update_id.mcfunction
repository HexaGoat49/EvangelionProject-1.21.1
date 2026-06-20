# To idle
scoreboard players set @s[scores={nge.stateId=2},predicate=!nge:backward] nge.stateId 1
scoreboard players set @s[scores={nge.stateId=3},predicate=nge:backward] nge.stateId 1
scoreboard players set @s[scores={nge.stateId=1..3},predicate=!nge:has_motion] nge.stateId 0
# From idle
scoreboard players set @s[scores={nge.stateId=0},predicate=nge:has_motion] nge.stateId 1
scoreboard players set @s[scores={nge.stateId=1},predicate=nge:backward] nge.stateId 2
scoreboard players set @s[scores={nge.stateId=1},predicate=nge:sprint] nge.stateId 3
# Jump
scoreboard players set @s[scores={nge.stateId=0..3},predicate=nge:jump] nge.stateId 4
# Fall
scoreboard players set @s[scores={nge.groundDelay=0}] nge.stateId 5
# Floor
scoreboard players set @s[scores={nge.stateId=5,nge.groundDelay=1..}] nge.stateId 6