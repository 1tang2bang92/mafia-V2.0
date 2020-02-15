#targeting
execute unless entity @p[tag=death] as @a[scores={job-mafia=1,rightC=1..},tag=player] at @s run function mafia:ingame/night/mafia
execute if score TimeStatus master matches 1 as @a[scores={job-mafia=1,invisible=1..},tag=player] run function mafia:ingame/night/mafia
execute as @a[scores={rightC=1..,job-mafia=..0,cool=0},tag=player] at @s positioned ~ ~1.62 ~ positioned ^ ^ ^0.2 run function mafia:ingame/night/loop_1

#police imprisonment tp
execute if entity @p[tag=player,scores={job-police=1,button=1}] as @p[tag=player,scores={job-police=1,button=1}] at @s run function mafia:ingame/night/imprisonment
execute if entity @e[tag=police] run tp @a[tag=police-target] @e[type=minecraft:area_effect_cloud,limit=1,tag=police]
execute unless entity @e[tag=police] if entity @p[tag=police-target] run tag @a[tag=police-target] remove police-target

#mafia ability
execute as @a[scores={job-mafia=1,invisible=1,master=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function mafia:ingame/night/mafia-detect
execute as @a[scores={job-mafia=1,invisible=1}] if score @s master = CurrentPlayerCount master run scoreboard players set @s master 0

#error
execute as @a[scores={rightC=1..,master=0},tag=used-abil] run tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.ability.error"},"\n\n",{"translate":"mafia.system.chatui.bot"}]

#fog
execute as @a[scores={job-mafia=0},tag=player] run function mafia:ingame/night/fog
execute as @a[scores={job-mafia=1,invisible=0},tag=player] run function mafia:ingame/night/fog