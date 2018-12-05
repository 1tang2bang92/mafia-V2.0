execute store result score Time master run time query daytime
execute store result score Date master run time query day
execute if score GameStatus master matches 4 if score TimeStatus master matches 2 run function mafia:main/time/twilight
execute if score GameStatus master matches 4 if score TimeStatus master matches 3 run function mafia:main/time/midnight
execute if score GameStatus master matches 4 if score TimeStatus master matches 4 run function mafia:main/time/dawn
execute if score GameStatus master matches 3 if score TimeStatus master matches 1 run function mafia:main/time/day
execute if score GameStatus master matches 3.. run function mafia:main/player_count