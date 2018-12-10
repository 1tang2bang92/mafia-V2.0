tag @s add doctor-target
tag @s remove death
kill @e[type=minecraft:area_effect_cloud,limit=1]
tag @p[scores={job-doctor=1}] add used-abil
tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 의사","color":"white","bold":false},{"text":"가 당신을 구했습니다.","color":"gold"}]