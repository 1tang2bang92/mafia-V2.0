time add 1d
time set noon
scoreboard players set TimeStatus master 1
scoreboard players set GameStatus master 3
scoreboard players set @a candidate 0
tag @a[tag=voted_yes] remove voted_yes
function mafia:main/player_count
function mafia:ingame/day/calculation
title @a title ["",{"text":"Day "},{"score":{"name":"Date","objective":"master"},"color":"gold","bold":true},{"text":" has begun!","color":"white","bold":false}]

tellraw @a[tag=death] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 낮이 될 때까지 아무도 당신을 구하지 않아 사망하였습니다.","color":"gold"}]
execute if entity @p[tag=death] run tellraw @a[tag=!death] ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" "},{"selector":"@a[tag=death]"},{"text":"가 사망하였습니다.","color":"gold"}]
execute as @a[tag=death] run scoreboard players remove TotalPlayerCount master 1
gamemode spectator @a[tag=death]
tag @a[tag=death] remove player
tag @a[tag=death] remove death
kill @e[tag=deathMarker]

tag @a[tag=used-abil] remove used-abil

function mafia:ingame/day/vote