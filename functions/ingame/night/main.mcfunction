#targeting
execute as @a[scores={job-mafia=1,scores={rightC=1..}}] positioned ~ ~1.62 ~ run function mafia:ingame/night/mafia-loop
execute as @a[scores={job-police=1,scores={rightC=1..}}] positioned ~ ~1.62 ~ run function mafia:ingame/night/police-loop
execute as @a[scores={job-doctor=1,scores={rightC=1..}}] positioned ~ ~1.62 ~ run function mafia:ingame/night/doctor-loop

#police imprisonment tp
tp @a[tag=police-target] @e[type=minecraft:area_effect_cloud,limit=1]