execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] result-vote 1
execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] voted 1
execute if entity @s[tag=!voted] run tellraw @s ["",{"text":"You have voted "},{"text":"YES","color":"green"},{"text":" for ","color":"white"},{"selector":"@p[scores={candidate=1}]","color":"dark_red"},{"text":". \nYour voting has ended.","color":"white"}]
execute if entity @s[tag=!voted] run tag @s add voted_yes
execute if entity @s[tag=!voted] run tag @s add voted