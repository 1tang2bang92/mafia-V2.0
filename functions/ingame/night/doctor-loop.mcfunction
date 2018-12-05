#doctor-loop
scoreboard players add @s master 1
execute as @s unless block ~ ~ ~ air run scoreboard players set @s master 6
execute as @s[scores={master=1..}] at @s as @p[scores={job-doctor=0},distance=..1] run tag @s add doctor-target
execute as @s if entity @s[scores={master=..5}] if ~ ~ ~ air positioned ^ ^ ^1 run function mafia:ingame/night/doctor-loop