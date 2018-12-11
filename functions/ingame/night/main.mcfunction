#targeting
execute as @a[scores={job-mafia=1,rightC=1..}] at @s positioned ~ ~1.62 ~ run function mafia:ingame/night/mafia
execute as @a[scores={job-police=1,rightC=1..,cool=0}] at @s positioned ~ ~1.62 ~ run function mafia:ingame/night/police-loop
execute as @a[scores={job-doctor=1,rightC=1..},tag=!used-abil] at @s positioned ~ ~1.62 ~ run function mafia:ingame/night/doctor-loop
execute as @a[scores={job-spy=1,rightC=1..},tag=!used-abil] at @s positioned ~ ~1.62 ~ run function mafia:ingame/night/spy-loop

#police imprisonment tp
execute if entity @e[tag=police] run tp @a[tag=police-target] @e[type=minecraft:area_effect_cloud,limit=1,tag=police]
execute unless entity @e[tag=police] if entity @p[tag=police-target] run tag @a[tag=police-target] remove police-target
