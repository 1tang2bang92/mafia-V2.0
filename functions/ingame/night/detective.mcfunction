summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @s Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add used-abil
tag @p[distance=0] add detective-target

scoreboard players operation @s TS-user = @p[distance=0] Id

scoreboard players set @s master 6

tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"selector":"@p[distance=0]","color":"blue","bold":false},{"translate":"mafia.game.detective.search"},"\n",{"translate":"mafia.system.chatui.bot"}]