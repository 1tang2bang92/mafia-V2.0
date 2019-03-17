execute if score MafiaCount master matches 1.. if score CitizenCount master matches ..1 run function mafia:game/mafia_wins
execute if score MafiaCount master matches 0 run function mafia:game/citizen_wins
execute if score Time master matches 6000 if score MafiaCount master matches 1.. unless score CitizenCount master matches ..1 run function mafia:main/time/set_twilight