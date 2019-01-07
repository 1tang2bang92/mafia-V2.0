execute as @e[name=TimeStamp] if score @s TS-user = @p[distance=0] TS-user run tag @s add DR-TS
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-user run tag @s add DR-user
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-victim run tag @s add DR-victim
tellraw @p[distance=0] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true},{"selector":"@p[tag=DR-user]","color":"red","bold":true},{"text":"가 ","color":"white","bold":false},{"selector":"@p[tag=DR-victim]","color":"green","bold":true},{"text":"에게 자신의 능력을 사용했습니다.","color":"white","bold":false},{"text":"\n   능력사용시간:","color":"gold","bold":true},{"score":{"name":"@e[tag=DR-TS,limit=1]","objective":"TS-time","bold":false}}]
tag @p[distance=0] remove used-abil
scoreboard players reset @p[distance=0] TS-user
tag @a[tag=DR-user] remove DR-user
tag @a[tag=DR-victim] remove DR-victim
kill @e[tag=DR-TS]
execute if entity @p[scores={job-detective=1},tag=used-abil] at @p[sort=random,scores={job-detective=1},tag=used-abil] run function mafia:ingame/day/detective-report