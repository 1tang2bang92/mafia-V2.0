#spy-loop
scoreboard players add @s master 1
execute unless block ~ ~ ~ air run scoreboard players set @s master 6
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute if score @s master matches ..6 positioned ~ ~-1 ~ if entity @p[team=Mafia,tag=player,distance=..1,limit=1,sort=nearest] at @p[scores={job-spy=0},sort=nearest,team=Mafia] as @s run function mafia:ingame/night/spy-success
execute if score @s master matches ..6 positioned ~ ~-1 ~ if entity @p[tag=team_Citizen,tag=player,distance=..1,limit=1,sort=nearest,scores={job-spy=0}] at @p[scores={job-spy=0},sort=nearest,tag=team_Citizen] as @s run function mafia:ingame/night/spy-fail
execute as @s if entity @s[scores={job-spy=1,master=..6}] positioned ^ ^ ^1 if block ~ ~ ~ air run function mafia:ingame/night/spy-loop