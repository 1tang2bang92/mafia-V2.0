execute if entity @s[scores={rightC=1..,job-soldier=1}] run summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @s Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

execute as @s[scores={rightC=1..}] run scoreboard players add @s job-soldier 1
execute if entity @s[scores={job-soldier=5..}] run tag @s remove death
execute if entity @s[scores={job-soldier=5..}] run kill @e[type=minecraft:area_effect_cloud,limit=1,distance=..1]
execute if entity @s[scores={job-soldier=5..}] run clear @s minecraft:carrot_on_a_stick{CustomModelData:5}
execute if entity @s[scores={job-soldier=5..}] run tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"translate":"mafia.ability.name.soldier","color":"dark_green","bold":false},{"translate":"mafia.game.soldier.revive"},"\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @s[scores={job-soldier=5..}] run scoreboard players set @s master 0
execute if entity @s[scores={job-soldier=5..}] run scoreboard players set @s job-citizen 1
execute if entity @s[scores={job-soldier=5..}] run scoreboard players set @s job-soldier 0