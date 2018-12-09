scoreboard players add @s invisible 1
scoreboard players set @s[scores={invisible=2}] invisible 0
#mafia-loop
scoreboard players set @s rightC 0
#은신상태가 아닐때 (scores={invisible=1})
effect give @s minecraft:invisibility 100000 255
effect give @s minecraft:speed 100000 5 true
effect give @s minecraft:regeneration 100000 1 true
effect give @s minecraft:haste 100000 2 true
tellraw @s[scores={invisible=1}] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true},{"text":" 은신","color":"white","bold":false},{"text":"상태로 전환되었습니다.","color":"gold"}]

#은신 상태일때 (scores={invisible=0})
effect clear @s[scores={invisible=0}] minecraft:invisibility
effect clear @s[scores={invisible=0}] minecraft:speed
effect clear @s[scores={invisible=0}] minecraft:regeneration
effect clear @s[scores={invisible=0}] minecraft:haste
tellraw @s[scores={invisible=0}] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true},{"text":" 은신","color":"red","bold":false},{"text":"상태가 풀렸습니다.","color":"gold"}]