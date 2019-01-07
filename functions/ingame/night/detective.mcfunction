summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @s Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add used-abil
tag @p[distance=0] add detective-target

scoreboard players operation @s TS-user = @p[distance=0] Id

scoreboard players set @s master 6

tellraw @s ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true},{"selector":"@p[distance=0]","color":"blue","bold":false},{"text":"의 능력 사용 여부를 조사해 아침에 보고합니다.","color":"white","bold":false}]