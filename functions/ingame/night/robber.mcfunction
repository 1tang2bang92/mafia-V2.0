summon minecraft:armor_stand ~ 200 ~ {CustomName:"\"TimeStamp\"",Invulnerable:1,Marker:1,NoGravity:1,Tags:["undefined"]}
execute as @s store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-user run scoreboard players get @s Id
execute as @p[distance=0] store result score @e[name=TimeStamp,tag=undefined,limit=1] TS-victim run scoreboard players get @s Id
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-h run scoreboard players get Time-Hour master
execute store result score @e[name=TimeStamp,limit=1,tag=undefined] TS-time-m run scoreboard players get Time-Minute master
tag @e[name=TimeStamp,tag=undefined,limit=1] remove undefined

tag @p[distance=0] add robber-target

execute if entity @p[distance=0,scores={job-mafia=1}] run gamemode spectator @p[distance=0]
execute if entity @p[distance=0,scores={job-mafia=1}] run scoreboard players remove TotalPlayerCount master 1
execute if entity @p[distance=0,scores={job-mafia=1}] run tag @p[distance=0] remove player

scoreboard players operation @s job-citizen >< @p[distance=0] job-citizen
scoreboard players operation @s job-detective >< @p[distance=0] job-detective
scoreboard players operation @s job-doctor >< @p[distance=0] job-doctor
scoreboard players operation @s job-drugaddict >< @p[distance=0] job-drugaddict
scoreboard players operation @s job-police >< @p[distance=0] job-police
scoreboard players operation @s job-politician >< @p[distance=0] job-politician
scoreboard players operation @s job-reporter >< @p[distance=0] job-reporter
scoreboard players operation @s job-citizen >< @p[distance=0] job-robber
scoreboard players operation @s job-soldier >< @p[distance=0] job-soldier
scoreboard players operation @s job-spy >< @p[distance=0] job-spy
scoreboard players operation @s job-mafia >< @p[distance=0] job-mafia

scoreboard players set @p[distance=0,tag=player] job-citizen 1
scoreboard players set @s job-robber 0
scoreboard players set @s rightC 0
team join Mafia @s[scores={job-mafia=1}]
tag @s[scores={job-mafia=1}] remove team_Citizen

tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},{"selector":"@p[distance=0]"},{"translate":"mafia.game.robber.text0"},"\n"]
clear @s carrot_on_a_stick{CustomModelData:8} 1
function mafia:ingame/night/ability
tellraw @s[scores={job-mafia=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.mafia"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-citizen=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.citizen"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-police=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.police"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-doctor=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.doctor"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-spy=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.spy"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-soldier=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.soldier"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-politician=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.politician"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-reporter=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.reporter"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-detective=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.detective"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @s[scores={job-drugaddict=1}] ["\n",{"translate":"mafia.game.robber.text1"},{"translate":"mafia.ability.name.drugaddict"},{"translate":"mafia.game.robber.text2"},"\n",{"translate":"mafia.system.chatui.bot"}]
tag @p[distance=0] remove robber-target