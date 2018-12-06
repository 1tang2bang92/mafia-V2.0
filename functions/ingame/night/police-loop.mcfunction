#police-loop
scoreboard players add @s master 1
execute unless block ~ ~ ~ air run scoreboard players set @s master 6
particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~-1 ~ as @p[scores={job-police=0},distance=..1,tag=player,sort=nearest,limit=1] run function mafia:ingame/night/police
execute if entity @s[scores={master=6..}] run scoreboard players set @s master 0
execute as @s if entity @s[scores={master=..6}] positioned ^ ^ ^1 if block ~ ~ ~ air run function mafia:ingame/night/police-loop