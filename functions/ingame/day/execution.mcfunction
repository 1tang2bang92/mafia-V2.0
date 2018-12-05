tag @s remove player
tag @s remove voted
tag @s remove voted_yes
gamemode spectator @s
tp @s 1108 109 1125
execute store result score TotalPlayerCount master run tellraw @a[tag=player] ["",{"text":"Execution completed."}]
function mafia:main/player_count
function mafia:ingame/day/calculation