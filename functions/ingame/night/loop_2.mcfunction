#loop 2.
scoreboard players add @s master 1
execute if block ~ ~ ~ air run function mafia:ingame/night/loop_3
execute unless block ~ ~ ~ air run function mafia:ingame/night/loop_fail