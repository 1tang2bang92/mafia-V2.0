#loop 1.
execute if score @s master matches ..12 run function mafia:ingame/night/loop_2
execute if score @s master matches 13.. run scoreboard players set @s master 0