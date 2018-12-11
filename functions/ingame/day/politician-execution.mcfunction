tag @s remove voted
tag @s remove voted_yes
execute store result score TotalPlayerCount master run tellraw @a[tag=player] ["",{"text":"Unable to execute "},{"text":"Politician","color":"gold","bold":"true"}]
function mafia:main/player_count
function mafia:ingame/day/calculation