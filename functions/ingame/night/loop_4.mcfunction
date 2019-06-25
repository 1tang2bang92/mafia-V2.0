#loop 4.
scoreboard players set @s master 13
scoreboard players set @s master 0
execute if entity @s[tag=!used-abil] if score @s job-robber matches 1.. run function mafia:ingame/night/robber
execute if entity @s[tag=!used-abil] if score @s job-robber matches 1.. run tag @s add used-abil
execute if entity @s[tag=!used-abil] if score @s job-police matches 1.. as @p[distance=0] run function mafia:ingame/night/police
execute if entity @s[tag=!used-abil] if score @s job-doctor matches 1.. if entity @p[distance=0,tag=death] as @p[distance=0] run function mafia:ingame/night/doctor
execute if entity @s[tag=!used-abil] if score @s job-spy matches 1.. if entity @p[distance=0,tag=team_Citizen] run function mafia:ingame/night/spy-fail
execute if entity @s[tag=!used-abil] if score @s job-spy matches 1.. if entity @p[distance=0,team=Mafia] run function mafia:ingame/night/spy-success
execute if entity @s[tag=!used-abil] if score @s job-reporter matches 1.. run function mafia:ingame/night/reporter
execute if entity @s[tag=!used-abil] if score @s job-detective matches 1.. run function mafia:ingame/night/detective
