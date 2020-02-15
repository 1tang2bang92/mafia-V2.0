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
execute if entity @p[tag=death] run tellraw @a[tag=!death] ["\n",{"translate":"mafia.system.chatui.top"},"\n",{"translate":"mafia.game.death.announce","with":[{"selector":"@a[tag=death]"}]},"\n",{"translate":"mafia.system.chatui.bot"}]
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

scoreboard players enable @a[tag=player] button
scoreboard players set @a[tag=player] button 0
tellraw @a[tag=player] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n\n\n",{"translate":"mafia.game.vote.announce"},"\n",{"translate":"mafia.game.vote.button.skip","clickEvent":{"action":"run_command","value":"/trigger button set 1"}},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
scoreboard players set VoteTime master 6000
execute if score GameStatus master matches 3.. run schedule function mafia:ingame/day/vote 300s

scoreboard players set @a master 0

bossbar set mafia:dawn visible false
bossbar set mafia:vote visible true
bossbar set mafia:vote name [{"translate":"mafia.game.vote.timer"}]
bossbar set mafia:vote max 6000

scoreboard players set @a Id 0
function mafia:game/start_id

execute as @a[tag=player] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags:["loc_stmp"]}
execute as @a[tag=player] at @s store result score @e[tag=loc_stmp,limit=1,sort=nearest,distance=..1] master run scoreboard players get @s Id
tp @a[tag=player] 0 86 0