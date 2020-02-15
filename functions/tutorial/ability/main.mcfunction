execute as @s[scores={button=0}] run function mafia:tutorial/ability/text0
scoreboard players add @s[scores={button=0}] button 1
execute as @s[scores={button=2}] run function mafia:tutorial/ability/text1
scoreboard players add @s[scores={button=2}] button 1
execute as @s[scores={button=4}] run function mafia:tutorial/ability/text2
scoreboard players add @s[scores={button=4}] button 1
execute as @s[scores={button=6}] run function mafia:tutorial/ability/text3
scoreboard players add @s[scores={button=6}] button 1
execute as @s[scores={button=8}] run function mafia:tutorial/ability/text4

scoreboard players set @s[scores={button=8},team=!Mafia] job-mafia 1
scoreboard players set @s[scores={button=8},team=!Mafia] invisible 0
tag @s[scores={button=8},team=!Mafia] add player
execute as @s[scores={button=8},team=!Mafia] run function mafia:ingame/night/ability
give @s[scores={button=8},team=!Mafia] diamond_sword
team join Mafia @s[scores={button=8},team=!Mafia]
scoreboard players add @s[scores={button=8}] button 1
execute as @s[team=Mafia,scores={rightC=1}] at @s run function mafia:ingame/night/mafia

execute if entity @s[scores={button=11}] run function mafia:tutorial/ability/reset
scoreboard players set @s[scores={button=11}] button 9

execute unless entity @e[tag=dummy] run scoreboard players set @s[team=Mafia,scores={tut-kill=1..}] button 10
execute as @s[scores={button=10}] run function mafia:tutorial/ability/text5
advancement grant @s[scores={button=10}] only mafia:tut_2