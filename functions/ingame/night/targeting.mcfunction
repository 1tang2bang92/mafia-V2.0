#targeting
execute as @a[scores={job-mafia=1,scores={rightC=1..}}] run function mafia:ingame/night/mafia-ability
execute as @a[scores={job-police=1,scores={rightC=1..}}] positioned ~ ~1.62 ~ run function mafia:ingame/night/police-loop
execute as @a[scores={job-doctor=1,scores={rightC=1..}}] positioned ~ ~1.62 ~ run function mafia:ingame/night/doctor-loop