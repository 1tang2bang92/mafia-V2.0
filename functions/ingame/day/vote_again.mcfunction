tellraw @a [{"translate":"mafia.system.chatui.top"},"\n\n\n\n",{"translate":"mafia.game.vote_again.text0"},{"selector":"@a[scores={result-vote=0}]","color":"dark_red","bold":true},{"translate":"mafia.game.vote_again.text1"},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
scoreboard players set voteCount master 0
scoreboard players set @a[scores={result-vote=0}] voted 0
scoreboard players set @a[scores={result-vote=0}] candidate 0
tag @a remove voted
tag @a remove voted_yes
tag @a[scores={job-politician=1}] add extra-vote
function mafia:ingame/day/vote