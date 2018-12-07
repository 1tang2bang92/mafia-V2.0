#mafia-loop
scoreboard players add @s master 1
scoreboard players set @s rightC 0
#은신상태가 아닐때 (scores={invisible=0})
effect give @s[scores={invisible=0}] minecraft:invisibility 100000 255
tellraw @s[scores={invisible=0}] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true},{"text":" 은신","color":"white","bold":false},{"text":"상태로 전환되었습니다.","color":"gold"}]

#은신 상태일때 (scores={invisible=1})
effect clear @s[scores={invisible=1}] minecraft:invisibility
tellraw @s[scores={invisible=1}] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true},{"text":" 은신","color":"red","bold":false},{"text":"상태가 풀렸습니다.","color":"gold"}]