gamemode adventure @a[tag=player]

scoreboard players add Date master 1
time set noon
scoreboard players set TimeStatus master 1
scoreboard players set GameStatus master 3
scoreboard players set @a candidate 0
tag @a[tag=voted_yes] remove voted_yes

title @a title ["",{"score":{"name":"Date","objective":"master"},"color":"gold","bold":true},{"translate":"mafia.game.time.day.text0"}]
title @a subtitle ["",{"translate":"mafia.game.time.day.text1"}]

tellraw @a[tag=death] ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"translate":"mafia.game.death.tell"},"\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @p[tag=death] run tellraw @a[tag=!death] ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"selector":"@a[tag=death]"},{"text":"mafia.game.death.announce"},"\n",{"translate":"mafia.system.chatui.bot"}]
execute as @a[tag=death] run scoreboard players remove TotalPlayerCount master 1
gamemode spectator @a[tag=death]
tag @a[tag=death] remove player
tag @a[tag=death] remove death
kill @e[tag=deathMarker]

function mafia:main/player_count
function mafia:ingame/day/calculation

execute if entity @p[scores={job-detective=1},tag=used-abil] at @p[sort=random,scores={job-detective=1},tag=used-abil] run function mafia:ingame/day/detective-report
tag @a[tag=used-abil] remove used-abil
execute if entity @p[tag=reporter-target] run function mafia:ingame/day/report

kill @e[name=TimeStamp]

execute if score GameStatus master matches 3.. run function mafia:ingame/day/vote

bossbar set mafia:dawn visible false

scoreboard players set @a Id 0
function mafia:game/start_id