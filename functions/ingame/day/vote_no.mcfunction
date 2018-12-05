execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] voted 1
execute if entity @s[tag=!voted] run tellraw @s ["",{"text":"You have voted "},{"text":"NO","color":"red"},{"text":" for ","color":"white"},{"selector":"@p[scores={candidate=1}]","color":"dark_red"},{"text":".","color":"white"}]
execute if entity @s[tag=!voted] run tag @s add voted