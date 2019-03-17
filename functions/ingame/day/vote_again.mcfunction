tellraw @a ["\n\n",{"text":"Multiple people, "},{"selector":"@a[scores={result-vote=0}]","color":"dark_red","bold":true},{"text":" has been voted for execution.\nRequires scecondary voting.","color":"white","bold":"false"}]
scoreboard players set voteCount master 0
scoreboard players set @a[scores={result-vote=0}] voted 0
scoreboard players set @a[scores={result-vote=0}] candidate 0
tag @a remove voted
tag @a remove voted_yes
tag @a[scores={job-politician=1}] add extra-vote
function mafia:ingame/day/vote