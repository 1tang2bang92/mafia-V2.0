execute as @e[name=TimeStamp] if score @s TS-user = @p[distance=0] TS-user run tag @s add DR-TS
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-user run tag @s add DR-user
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-victim run tag @s add DR-victim
tellraw @p[distance=0] ["",{"selector":"@p[tag=DR-user]","color":"red"},{"text":"가 ","color":"white"},{"selector":"@p[tag=DR-victim]","color":"green"},{"text":"에게 자신의 능력을 사용했습니다.","color":"white"},{"text":"\n능력사용시간:","color":"gold"},{"score":{"name":"@e[tag=DR-TS,limit=1]","objective":"TS-time"}}]
tag @p[distance=0] remove used-abil
scoreboard players reset @p[distance=0] TS-user
execute if entity @p[scores={job-detective=1},tag=used-abil] at @p[sort=random,scores={job-detective=1},tag=used-abil] run function mafia:ingame/day/detective-report