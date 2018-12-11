#spy-loop
scoreboard players add @s master 1
execute unless block ~ ~ ~ air run scoreboard players set @s master 6
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute if score @s master matches 1..6 positioned ~ ~-1 ~ if entity @p[team=Mafia,tag=player,distance=..1,limit=1,sort=nearest] run function mafia:ingame/night/spy-success
execute if score @s master matches 1..6 positioned ~ ~-1 ~ if entity @p[team=Citizen,tag=player,distance=..1,limit=1,sort=nearest] run function mafia:ingame/night/spy-fail
execute if entity @s[scores={master=6..}] run scoreboard players set @s master 0
execute as @s if entity @s[scores={master=1..6}] positioned ^ ^ ^1 if block ~ ~ ~ air run function mafia:ingame/night/spy-loop