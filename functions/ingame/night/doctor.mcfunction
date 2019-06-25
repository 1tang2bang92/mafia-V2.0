summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-doctor=1}] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @p[scores={job-doctor=1}] Id
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @p Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add doctor-target

tag @s remove death
clear @s minecraft:music_disc_11{placeholder:1b}
function mafia:ingame/night/ability
kill @e[type=minecraft:area_effect_cloud,tag=deathMarker,limit=1,distance=..1]

tag @p[scores={job-doctor=1}] add used-abil

scoreboard players set @p[scores={job-doctor=1}] master 0

tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.ability.name.doctor","color":"white","bold":true},{"translate":"mafia.game.doctor.revive"},"\n\n",{"translate":"mafia.system.chatui.bot"}]

tag @s remove doctor-target