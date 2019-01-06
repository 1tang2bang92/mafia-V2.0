summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @p[distance=0] add robber-target

execute if entity @p[distance=0,scores={job-mafia=1}] run gamemode spectator @p[distance=0]
execute if entity @p[distance=0,scores={job-mafia=1}] run tag @p[distance=0] remove player

scoreboard players operation @s job-citizen >< @p[distance=0] job-citizen
scoreboard players operation @s job-detective >< @p[distance=0] job-detective
scoreboard players operation @s job-doctor >< @p[distance=0] job-doctor
scoreboard players operation @s job-drugaddict >< @p[distance=0] job-drugaddict
scoreboard players operation @s job-police >< @p[distance=0] job-police
scoreboard players operation @s job-politician >< @p[distance=0] job-politician
scoreboard players operation @s job-reporter >< @p[distance=0] job-reporter
scoreboard players operation @s job-citizen >< @p[distance=0] job-robber
scoreboard players operation @s job-soldier >< @p[distance=0] job-soldier
scoreboard players operation @s job-spy >< @p[distance=0] job-spy
scoreboard players operation @s job-mafia >< @p[distance=0] job-mafia

scoreboard players set @p[distance=0,tag=player] job-citizen 1

scoreboard players operation TotalPlayerCount master = CurrnetPlayerCount master