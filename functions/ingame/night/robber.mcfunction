summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-robber=1,rightC=1..}] store result entity @e[name=TimeStamp,tag=undefined,limit=1] Rotation.[0] float 1 run scoreboard players get @p Id
execute as @s store result entity @e[name=TimeStamp,tag=undefined,limit=1] Rotation.[1] float 1 run scoreboard players get @p Id
execute store result entity @e[name=TimeStamp,limit=1,tag=undefined] AbsorptionAmount float 1 run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add robber-target

execute if entity @s[scores={job-mafia=1}] run gamemode spectator @s
execute if entity @s[scores={job-mafia=1}] run tag @s remove player

scoreboard players operation @p[scores={job-robber=1}] job-citizen >< @s job-citizen
scoreboard players operation @p[scores={job-robber=1}] job-detective >< @s job-detective
scoreboard players operation @p[scores={job-robber=1}] job-doctor >< @s job-doctor
scoreboard players operation @p[scores={job-robber=1}] job-drugaddict >< @s job-drugaddict
scoreboard players operation @p[scores={job-robber=1}] job-police >< @s job-police
scoreboard players operation @p[scores={job-robber=1}] job-politician >< @s job-politician
scoreboard players operation @p[scores={job-robber=1}] job-reporter >< @s job-reporter
scoreboard players operation @p[scores={job-robber=1}] job-robber >< @s job-robber
scoreboard players operation @p[scores={job-robber=1}] job-soldier >< @s job-soldier
scoreboard players operation @p[scores={job-robber=1}] job-spy >< @s job-spy
scoreboard players operation @p[scores={job-robber=1}] job-mafia >< @s job-mafia

scoreboard players set @s[tag=player] job-citizen 1

scoreboard players operation TotalPlayerCount master = CurrnetPlayerCount master