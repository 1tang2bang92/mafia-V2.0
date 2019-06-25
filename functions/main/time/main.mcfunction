execute store result score Time master run time query daytime
execute if score GameStatus master matches 4 if score TimeStatus master matches 2 run function mafia:main/time/twilight
execute if score GameStatus master matches 4 if score TimeStatus master matches 3 run function mafia:main/time/midnight
execute if score GameStatus master matches 4 if score TimeStatus master matches 4 run function mafia:main/time/dawn
execute if score GameStatus master matches 3 if score TimeStatus master matches 1 run function mafia:main/time/day
execute if score GameStatus master matches 3.. run function mafia:main/player_count
execute if score TimeStatus master matches 4 as @a[tag=player,scores={job-doctor=1..,rightC=1..}] at @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.2 run function mafia:ingame/night/loop_1
execute if entity @p[tag=death] if entity @p[scores={job-doctor=1..},tag=player] run tag @a[scores={job-doctor=1..},tag=player] remove used-abil

#faint
execute as @a[tag=player,scores={deathCount=1..}] at @s run function mafia:ingame/night/faint
execute as @a[tag=player,tag=death] at @s run function mafia:ingame/night/faint-loop
execute as @a[tag=player,tag=death,scores={job-soldier=1..}] at @s run function mafia:ingame/night/soldier-faint

#scoreboard sets
scoreboard players set @a[scores={rightC=1..}] rightC 0

#weakness effect
effect give @a[tag=player,scores={invisible=0}] minecraft:weakness 1 255 true

execute if entity @p[tag=player,tag=death] store result score dead-x master run data get entity @p[tag=player,tag=death] Pos.[0] 1
execute if entity @p[tag=player,tag=death] store result score dead-y master run data get entity @p[tag=player,tag=death] Pos.[1] 1
execute if entity @p[tag=player,tag=death] store result score dead-z master run data get entity @p[tag=player,tag=death] Pos.[2] 1
execute as @a[tag=player,scores={job-doctor=1}] at @s if entity @p[tag=player,tag=death,distance=..30] run title @s actionbar [{"selector":"@p[tag=player,tag=death,distance=..30]","color":"white","bold":true}," ",{"score":{"name":"dead-x","objective":"master"},"color":"red"},",",{"score":{"name":"dead-y","objective":"master"},"color":"green"},",",{"score":{"name":"dead-z","objective":"master"},"color":"blue"}]