summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-doctor=1}] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p[scores={job-doctor=1}] Id
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add doctor-target

tag @s remove death
kill @e[type=minecraft:area_effect_cloud,limit=1]

tag @p[scores={job-doctor=1}] add used-abil

scoreboard players set @p[scores={job-doctor=1}] master 0

tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 의사","color":"white","bold":false},{"text":"가 당신을 구했습니다.","color":"gold"}]

tag @s remove doctor-target