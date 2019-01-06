summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-police=1}] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p Id
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

execute if entity @e[tag=police-target,team=Mafia] run tellraw @p[scores={job-police=1}] ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"text":"는 ","color":"white"},{"text":"마피아","color":"red"},{"text":" 입니다.","color":"white"}]
execute if entity @e[tag=police-target,team=Citizen] run tellraw @p[scores={job-police=1}] ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"text":"는 ","color":"white"},{"text":"시민","color":"green"},{"text":" 입니다.","color":"white"}]
tag @p[scores={job-police=1}] add used-abil