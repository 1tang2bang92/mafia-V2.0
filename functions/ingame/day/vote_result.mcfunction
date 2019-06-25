scoreboard players set Max result-vote 0
scoreboard players operation Max result-vote > @a[tag=player] result-vote
scoreboard players operation @a[tag=player] result-vote -= Max result-vote
scoreboard players reset Max result-vote
execute if entity @a[tag=player,scores={result-vote=0}] store result score voteCount master run tellraw @a[tag=player,scores={result-vote=0}] [{"translate":"mafia.system.chatui.top"},"\n\n\n\n\n",{"translate":"mafia.game.vote_result.text0"},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. run tellraw @a[scores={result-vote=..-1}] [{"translate":"mafia.system.chatui.top"},"\n\n\n",{"selector":"@p[scores={result-vote=0}]","color":"red","bold":true},{"translate":"mafia.game.vote_result.text1"},"\n\n",{"translate":"mafia.system.chatui.mid"}]
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. if entity @p[tag=player,scores={result-vote=0,job-politician=0},gamemode=adventure] as @p[tag=player,scores={result-vote=0}] run function mafia:ingame/day/execution
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. if entity @p[tag=player,scores={result-vote=0,job-politician=1},gamemode=adventure] as @p[tag=player,scores={result-vote=0}] run function mafia:ingame/day/politician-execution
execute if score voteCount master matches 1 if score MafiaCount master matches 1.. run scoreboard players set voteCount master 0
execute if score voteCount master matches 2.. run function mafia:ingame/day/vote_again