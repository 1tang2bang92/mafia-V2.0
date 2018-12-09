#mafia-loop
scoreboard players add @s master 1
scoreboard players set @s rightC 0
execute as @s unless block ~ ~ ~ air run scoreboard players set @s master 6
execute as @s[scores={master=1..}] at @s as @p[scores={job-mafia=0},distance=..1] run tag @s add mafia-target 
execute as @s if entity @s[scores={master=..5}] if ~ ~ ~ air positioned ^ ^ ^1 run function mafia:ingame/night/mafia-loop