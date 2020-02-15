#Timer
execute store result bossbar mafia:vote value run scoreboard players get VoteTime master
execute if score VoteTime master matches 1.. run scoreboard players remove VoteTime master 1

#skip to vote
execute unless entity @p[tag=player,scores={candidate=1}] if score SkipPlayerCount master = TotalPlayerCount master run function mafia:ingame/day/vote
execute unless entity @p[tag=player,scores={candidate=1}] run tellraw @a[tag=player,scores={button=1,master=0}] [{"translate":"mafia.system.chatui.top"},"\n\n\n\n\n",{"translate":"mafia.game.vote.skipdiscussion"},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
execute store result score SkipPlayerCount master run scoreboard players set @a[tag=player,scores={button=1}] master 1

#vote
execute if score VoteTime master matches 0 run scoreboard players operation @p[tag=player,scores={candidate=1}] voted = TotalPlayerCount master
execute if score TotalPlayerCount master = @p[scores={candidate=1},tag=player] voted if entity @p[scores={candidate=0},tag=player] run function mafia:ingame/day/vote
execute if entity @p[tag=player,scores={candidate=1}] as @a[tag=player,tag=!voted_yes,tag=!voted,scores={button=1}] run function mafia:ingame/day/vote_yes
execute if entity @p[tag=player,scores={candidate=1}] as @a[tag=player,tag=!voted_yes,tag=!voted,scores={button=2}] run function mafia:ingame/day/vote_no
execute if score TotalPlayerCount master = @p[scores={candidate=1},tag=player] voted unless entity @p[scores={candidate=0},tag=player] run scoreboard players set @p[scores={candidate=1}] candidate 2

#results
execute unless entity @p[scores={candidate=..1},tag=player] run function mafia:ingame/day/vote_result
effect give @a[tag=player] resistance 1 5 true