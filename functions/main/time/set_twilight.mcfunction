time set 12000
execute if score GameStatus master matches 2 run scoreboard players operation GameLength master -= 2 master
scoreboard players set GameStatus master 4
scoreboard players set TimeStatus master 2
scoreboard players set voteCount master 0
scoreboard players set @a candidate 0
scoreboard players set @a voted 0
scoreboard players reset @a result-vote
title @a title ["",{"text":"The "},{"text":"Night ","color":"dark_red"},{"text":"has begun!","color":"white"}]
title @a subtitle [""]