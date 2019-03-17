scoreboard players set Max result-vote 0
scoreboard players operation Max result-vote > @a[tag=player] result-vote
scoreboard players operation @a[tag=player] result-vote -= Max result-vote
scoreboard players reset Max result-vote
execute if entity @a[tag=player,scores={result-vote=0}] store result score voteCount master run tellraw @a[tag=player,scores={result-vote=0}] ["",{"text":"You have been voted for execution.","color":"red"}]
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. run tellraw @a[scores={result-vote=..-1}] ["",{"selector":"@p[scores={result-vote=0}]"},{"text":" has been voted for execution."}]
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. if entity @p[tag=player,scores={result-vote=0,job-politician=0},gamemode=adventure] as @p[tag=player,scores={result-vote=0}] run function mafia:ingame/day/execution
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. if entity @p[tag=player,scores={result-vote=0,job-politician=1},gamemode=adventure] as @p[tag=player,scores={result-vote=0}] run function mafia:ingame/day/politician-execution
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. run scoreboard players set voteCount master 0
execute if score voteCount master matches 2.. run function mafia:ingame/day/vote_again