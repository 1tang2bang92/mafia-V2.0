execute store result score Time master run time query daytime
execute if score GameStatus master matches 4 if score TimeStatus master matches 2 run function mafia:main/time/twilight
execute if score GameStatus master matches 4 if score TimeStatus master matches 3 run function mafia:main/time/midnight
execute if score GameStatus master matches 4 if score TimeStatus master matches 4 run function mafia:main/time/dawn
execute if score GameStatus master matches 3 if score TimeStatus master matches 1 run function mafia:main/time/day
execute if score GameStatus master matches 3.. run function mafia:main/player_count

#faint
execute as @a[tag=player,scores={deathCount=1..}] at @s run function mafia:ingame/night/faint
execute as @a[tag=player,tag=death] at @s run function mafia:ingame/night/faint-loop
execute as @a[tag=player,tag=death,scores={job-soldier=1..}] at @s run function mafia:ingame/night/soldier-faint

#scoreboard sets
scoreboard players set @a[scores={rightC=1..}] rightC 0

#weakness effect
effect give @a[tag=player,scores={invisible=0}] minecraft:weakness 1 255 true