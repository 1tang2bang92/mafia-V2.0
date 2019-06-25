execute if score TotalPlayerCount master = @p[scores={candidate=1},tag=player] voted if entity @p[scores={candidate=0},tag=player] run function mafia:ingame/day/vote
execute as @a[tag=player,tag=!voted_yes,tag=!voted,scores={button=1}] run function mafia:ingame/day/vote_yes
execute as @a[tag=player,tag=!voted_yes,tag=!voted,scores={button=2}] run function mafia:ingame/day/vote_no
execute if score TotalPlayerCount master = @p[scores={candidate=1},tag=player] voted unless entity @p[scores={candidate=0},tag=player] run scoreboard players set @p[scores={candidate=1}] candidate 2
execute unless entity @p[scores={candidate=..1},tag=player] run function mafia:ingame/day/vote_result
effect give @a[tag=player] resistance 1 5 true