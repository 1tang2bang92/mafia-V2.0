time add 1d
time set noon
scoreboard players set TimeStatus master 1
scoreboard players set GameStatus master 3
scoreboard players set @a candidate 0
tag @a[tag=voted_yes] remove voted_yes
function mafia:main/player_count
function mafia:ingame/day/calculation
function mafia:ingame/day/vote
title @a title ["",{"text":"Day "},{"score":{"name":"Date","objective":"master"},"color":"gold","bold":true},{"text":" has begun!","color":"white","bold":false}]

tag @a[tag=used-abil] remove used-abil