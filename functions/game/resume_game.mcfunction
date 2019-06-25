scoreboard players operation TotalPlayerCount master = CurrentPlayerCount master
execute if score TimeStatus master matches 1 run scoreboard players set GameStatus master 3
execute if score TimeStatus master matches 2..4 run scoreboard players set GameStatus master 4
scoreboard players set CountDown master 0
title @a times 5 5 5
execute if score MafiaCount master matches 0 run function mafia:game/citizen_wins
execute if score MafiaCount master > CitizenCount master run function mafia:game/mafia_wins