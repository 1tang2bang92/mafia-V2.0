summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p[distance=0] Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

scoreboard players set @s master 6
tag @s add used-abil
tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 마피아","color":"dark_red","bold":false},{"text":"와의 접선에 실패했습니다.","color":"gold"}]