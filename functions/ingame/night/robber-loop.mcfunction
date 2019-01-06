#robber function

scoreboard players add @s master 1
execute unless block ~ ~ ~ air run scoreboard players set @s master 6
particle dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute if score @s master matches 1..6 positioned ~ ~-1 ~ at @p[scores={job-robber=0},distance=..1,limit=1,sort=nearest] as @s run function mafia:ingame/night/robber
execute if entity @s[scores={master=6..}] run scoreboard players set @s master 0
execute as @s if entity @s[scores={master=0..6}] positioned ^ ^ ^1 if block ~ ~ ~ air run function mafia:ingame/night/robber-loop