summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-police=1}] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p[scores={job-police=1}] Id
execute as @p[tag=police-target] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p[tag=police-target] Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

scoreboard players set @p[scores={job-police=1}] button 0

execute if entity @e[tag=police-target,team=Mafia] run tellraw @p[scores={job-police=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.police.search","with":[{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"translate":"mafia.ability.name.mafia","color":"red"}]},"\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @e[tag=police-target,tag=team_Citizen] run tellraw @p[scores={job-police=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.police.search","with":[{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"translate":"mafia.ability.name.citizen","color":"green"}]},"\n\n",{"translate":"mafia.system.chatui.bot"}]
tag @p[scores={job-police=1}] add used-abil