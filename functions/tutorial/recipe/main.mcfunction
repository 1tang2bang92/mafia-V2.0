execute as @s[scores={button=0}] run function mafia:tutorial/recipe/text0
scoreboard players add @s[scores={button=0}] button 1
execute as @s[scores={button=2}] run function mafia:tutorial/recipe/text1
scoreboard players add @s[scores={button=2}] button 1
execute as @s[scores={button=4}] run function mafia:tutorial/recipe/text2
scoreboard players add @s[scores={button=4}] button 1
execute as @s[scores={button=6}] run function mafia:tutorial/recipe/text3
scoreboard players add @s[scores={button=6}] button 1
execute as @s[scores={button=8}] run function mafia:tutorial/recipe/text4
scoreboard players add @s[scores={button=8}] button 1
scoreboard players set @s[nbt={Inventory:[{id:"minecraft:wooden_sword"},{id:"minecraft:stone_sword"}]}] button 10
execute as @s[scores={button=10}] run function mafia:tutorial/recipe/text5
advancement grant @s[scores={button=10}] only mafia:tut_1
give @s[scores={button=11}] ink_sac 16
give @s[scores={button=11}] egg 16
give @s[scores={button=11}] stick 4
scoreboard players set @s[scores={button=11}] button 9