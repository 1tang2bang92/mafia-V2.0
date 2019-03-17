#targeting
execute unless entity @p[tag=death] as @a[scores={job-mafia=1,rightC=1..},tag=player] at @s positioned ~ ~1.62 ~ run function mafia:ingame/night/mafia
execute if entity @p[tag=death] as @a[scores={job-mafia=1,rightC=1,invisible=..0},tag=player] run tellraw @s ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true},{"text":"더 이상 능력 사용이 불가합니다.","color":"gold","bold":false}]
execute if entity @p[tag=death] as @a[scores={job-mafia=1,invisible=1..},tag=player] run function mafia:ingame/night/mafia
execute as @a[scores={rightC=1..,job-mafia=..0,cool=0},tag=player] at @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.2 run function mafia:ingame/night/loop_1

#police imprisonment tp
execute if entity @e[tag=police] run tp @a[tag=police-target] @e[type=minecraft:area_effect_cloud,limit=1,tag=police]
execute unless entity @e[tag=police] if entity @p[tag=police-target] run tag @a[tag=police-target] remove police-target

#mafia ability
execute as @a[scores={job-mafia=1,invisible=1}] at @s run function mafia:ingame/night/mafia-detect

#error
execute as @a[scores={rightC=1..},tag=used-abil] run tellraw @s ["",{"text":"[Mafia V2.0] ","color":"aqua","bold":true},{"text":"이미 능력을 사용했습니다.","color":"gold","bold":false}]