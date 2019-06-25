summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-police=1}] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p[scores={job-police=1}] Id
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

execute if entity @e[tag=police-target,team=Mafia] run tellraw @p[scores={job-police=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"translate":"mafia.game.police.search.text0"},{"translate":"mafia.ability.name.mafia","color":"red"},{"translate":"mafia.game.police.search.text1"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @e[tag=police-target,tag=team_Citizen] run tellraw @p[scores={job-police=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"translate":"mafia.game.police.search.text0"},{"translate":"mafia.ability.name.citizen","color":"green"},{"translate":"mafia.game.police.search.text1"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
tag @p[scores={job-police=1}] add used-abil