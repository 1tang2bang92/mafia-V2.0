summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @p[scores={job-doctor=1}] store result entity @e[name=TimeStamp,tag=undefined,limit=1] Rotation.[0] float 1 run scoreboard players get @p Id
execute as @s store result entity @e[name=TimeStamp,tag=undefined,limit=1] Rotation.[1] float 1 run scoreboard players get @p Id
execute store result entity @e[name=TimeStamp,limit=1,tag=undefined] AbsorptionAmount float 1 run scoreboard players get Time master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @s add doctor-target

tag @s remove death
kill @e[type=minecraft:area_effect_cloud,limit=1]

tag @p[scores={job-doctor=1}] add used-abil

tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 의사","color":"white","bold":false},{"text":"가 당신을 구했습니다.","color":"gold"}]
execute as @e[type=minecraft:armor_stand,limit=1] run function mafia:ingame/night/tp-loop