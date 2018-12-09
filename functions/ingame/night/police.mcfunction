tag @s add police-target
tag @p[scores={job-police=1}] add used-abil
summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["police"]}
tp @e[type=minecraft:area_effect_cloud,tag=police] @s
tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 경찰","color":"blue","bold":false},{"text":"이 당신을 구속했습니다.","color":"gold"}]
tellraw @p[scores={job-police=1}] ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"selector":"@p[tag=police-target]","color":"blue","bold":false},{"text":"를 조사하시겠습니까?","color":"gold"},{"text":" [예]","color":"green","clickEvent":{"action":"run_command","value":"/function mafia:ingame/night/imprisonment"}}]
scoreboard players set @p[scores={job-police=1}] master 6
