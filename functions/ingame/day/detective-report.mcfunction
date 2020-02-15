execute as @e[name=TimeStamp] if score @s TS-user = @p[distance=0] TS-user run tag @s add DR-TS
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-user run tag @s add DR-user
execute as @a if score @s Id = @e[tag=DR-TS,limit=1] TS-victim run tag @s add DR-victim
tellraw @p[distance=0] [{"translate":"mafia.system.chatui.top"},"\n\n\n\n",{"translate":"mafia.game.detective.report.text0","with":[{"selector":"@p[tag=DR-user]","color":"red","bold":true},{"selector":"@p[tag=DR-victim]","color":"green","bold":true},{"score":{"name":"@e[tag=DR-TS,limit=1]","objective":"TS-time-h","bold":false}},{"score":{"name":"@e[tag=DR-TS,limit=1]","objective":"TS-time-m","bold":false}}]},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
tag @p[distance=0] remove used-abil
scoreboard players reset @p[distance=0] TS-user
tag @a[tag=DR-user] remove DR-user
tag @a[tag=DR-victim] remove DR-victim
kill @e[tag=DR-TS]
execute if entity @p[scores={job-detective=1},tag=used-abil] at @p[sort=random,scores={job-detective=1},tag=used-abil] run function mafia:ingame/day/detective-report