summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p[distance=0] Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

scoreboard players set @s master 6
scoreboard players set @s job-mafia 1
team join Mafia @s
tag @s remove team_Citizen
scoreboard players set @s job-spy 0
scoreboard players set @s master 0
advancement revoke @s everything
tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"translate":"mafia.game.spy.success"},"\n",{"translate":"mafia.system.chatui.bot"}]
clear @s carrot_on_a_stick{CustomModelData:4} 1
function mafia:ingame/night/ability

recipe give @s mafia:wooden_sword
recipe give @s mafia:stone_sword
recipe give @s mafia:iron_sword
recipe give @s mafia:golden_sword