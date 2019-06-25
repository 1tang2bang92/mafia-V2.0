#�����ο�
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-mafia 1
tag @p[tag=!player,gamemode=adventure,scores={job-mafia=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-doctor 1
tag @p[tag=!player,gamemode=adventure,scores={job-doctor=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-police 1
tag @p[tag=!player,gamemode=adventure,scores={job-police=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-citizen 1
tag @p[tag=!player,gamemode=adventure,scores={job-citizen=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-citizen 1
tag @p[tag=!player,gamemode=adventure,scores={job-citizen=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-spy 1
tag @p[tag=!player,gamemode=adventure,scores={job-spy=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-citizen 1
tag @p[tag=!player,gamemode=adventure,scores={job-citizen=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-citizen 1
tag @p[tag=!player,gamemode=adventure,scores={job-citizen=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-soldier 1
tag @p[tag=!player,gamemode=adventure,scores={job-soldier=1}] add player
scoreboard players set @p[tag=!player,sort=random,gamemode=adventure] job-mafia 1
tag @p[tag=!player,gamemode=adventure,scores={job-mafia=1}] add player

#�����÷��̾� �����ο�
spreadplayers 99863 100103 0 2 false @e[type=minecraft:player,tag=!player,gamemode=adventure]
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:white_wool run scoreboard players set @s job-citizen 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:orange_wool run scoreboard players set @s job-mafia 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:pink_wool run scoreboard players set @s job-robber 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:lime_wool run scoreboard players set @s job-politician 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:yellow_wool run scoreboard players set @s job-reporter 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:light_blue_wool run scoreboard players set @s job-soldier 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:magenta_wool run scoreboard players set @s job-detective 1
execute as @e[type=minecraft:player,tag=!player] at @s if block ~ ~-1 ~ minecraft:gray_wool run say scoreboard players set @s job-drugaddict 1

execute as @a unless entity @s[scores={job-mafia=1}] run scoreboard players set @s job-mafia 0
execute as @a unless entity @s[scores={job-police=1}] run scoreboard players set @s job-police 0
execute as @a unless entity @s[scores={job-doctor=1}] run scoreboard players set @s job-doctor 0
execute as @a unless entity @s[scores={job-spy=1}] run scoreboard players set @s job-spy 0
execute as @a unless entity @s[scores={job-soldier=1}] run scoreboard players set @s job-soldier 0
execute as @a unless entity @s[scores={job-robber=1}] run scoreboard players set @s job-robber 0
execute as @a unless entity @s[scores={job-reporter=1}] run scoreboard players set @s job-reporter 0
execute as @a unless entity @s[scores={job-politician=1}] run scoreboard players set @s job-politician 0
execute as @a unless entity @s[scores={job-detective=1}] run scoreboard players set @s job-detective 0
execute as @a unless entity @s[scores={job-drugaddict=1}] run scoreboard players set @s job-drugaddict 0
execute as @a unless entity @s[scores={job-citizen=1}] run scoreboard players set @s job-citizen 0

function mafia:option/map_set
function mafia:game/start_load

kill @e[type=item]

tp @e[type=minecraft:player] 1108 200 1125

team join Mafia @a[scores={job-mafia=1}]
tag @a[scores={job-solider=1}] add team_Citizen
tag @a[scores={job-citizen=1}] add team_Citizen
tag @a[scores={job-spy=1}] add team_Citizen
tag @a[scores={job-police=1}] add team_Citizen
tag @a[scores={job-doctor=1}] add team_Citizen
tag @a[scores={job-robber=1}] add team_Citizen
tag @a[scores={job-reporter=1}] add team_Citizen
tag @a[scores={job-politician=1}] add team_Citizen
tag @a[scores={job-detective=1}] add team_Citizen
tag @a[scores={job-drugaddict=1}] add team_Citizen

#�÷��̾� Ȯ��
execute positioned 1108 200 1125 run tag @a[distance=..5,tag=!player,gamemode=adventure] add player

#���� �������� �÷��̾ ���°͵� ���ƺ���
#execute as @e[name=location1] at @s run tp @r[tag=player] @s
#execute as @e[name=location2] at @s run tp @r[tag=player] @s
#execute as @e[name=location3] at @s run tp @r[tag=player] @s
#execute as @e[name=location4] at @s run tp @r[tag=player] @s
#execute as @e[name=location5] at @s run tp @r[tag=player] @s
#execute as @e[name=location6] at @s run tp @r[tag=player] @s
#execute as @e[name=location7] at @s run tp @r[tag=player] @s
#execute as @e[name=location8] at @s run tp @r[tag=player] @s
tp @a 1108 109 1125

#�÷��̾� ���̵�
scoreboard players set @r[tag=player,scores={Id=..0}] Id 1
execute if entity @p[tag=player,scores={Id=..0}] run function mafia:game/start_id

#�ȳ�
function mafia:game/start_announce
execute as @a[tag=player] at @s run function mafia:ingame/night/ability
#����Ʈ Ŭ����
effect clear @a[tag=player] minecraft:resistance

#�ΰ������� �ѱ��
scoreboard players set Date master 0
execute if score GameStatus master matches 2 run schedule function mafia:main/time/set_twilight 5s
scoreboard players set @a cool 0
scoreboard players set @a master 0
scoreboard players set @a invisible 0
scoreboard players set 1000 master 1000

recipe give @a[tag=player] *
recipe take @a[scores={job-mafia=0}] mafia:wooden_sword
recipe take @a[scores={job-mafia=0}] mafia:stone_sword
recipe take @a[scores={job-mafia=0}] mafia:iron_sword
recipe take @a[scores={job-mafia=0}] mafia:golden_sword

give @a minecraft:wooden_axe
give @a minecraft:wooden_pickaxe
give @a minecraft:wooden_shovel
give @a minecraft:bread 16

bossbar set mafia:dawn players @a[tag=player]
bossbar set mafia:midnight players @a[tag=player]
bossbar set mafia:twilight players @a[tag=player]