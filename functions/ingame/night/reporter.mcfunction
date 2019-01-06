summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @p[distance=0] add reporter-target
tag @s add used-abil
execute if entity @p[distance=0] run tellraw @s ["",{"selector":"@p[distance=0]"},{"text":"의 직업을 낮에 폭로합니다."}]
execute if entity @p[distance=0] run scoreboard players set @s master 6
execute if entity @p[distance=0] run scoreboard players set @s job-reporter 0
execute if entity @p[distance=0] run scoreboard players set @s job-citizen 1
