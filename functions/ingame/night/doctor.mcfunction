tag @s add doctor-target
tag @s remove death
summon minecraft:armor_stand ~ ~ ~ {Tag:["abil-store"]}
scoreboard players operation @e[tag=abil-store,limit=1] asdf = @s asdf
scoreboard players operation @e[tag=abil-store,limit=1] asdf = @p[] asdf
kill @e[type=minecraft:area_effect_cloud,limit=1]
tag @p[scores={job-doctor=1}] add used-abil
tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 의사","color":"white","bold":false},{"text":"가 당신을 구했습니다.","color":"gold"}]
execute as @e[type=minecraft:armor_stand,limit=1] run function mafia:ingame/night/tp-loop