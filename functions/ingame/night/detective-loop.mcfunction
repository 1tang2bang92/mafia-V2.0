#detective-loop
scoreboard players add @s master 1
execute unless block ~ ~ ~ air run scoreboard players set @s master 6
particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 force
execute if score @s master matches 1..6 positioned ~ ~-1 ~ at @p[distance=..1] as @s run function mafia:ingame/night/detective
execute if entity @s[scores={master=6..}] run scoreboard players set @s master 0
execute as @s if entity @s[scores={master=1..6}] positioned ^ ^ ^1 if block ~ ~ ~ air run function mafia:ingame/night/detective-loop
