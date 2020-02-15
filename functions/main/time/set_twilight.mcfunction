time set 12000
execute if score GameStatus master matches 2 run scoreboard players operation GameLength master -= 2 master
scoreboard players set GameStatus master 4
scoreboard players set TimeStatus master 2
scoreboard players set voteCount master 0
scoreboard players set @a candidate 0
scoreboard players set @a voted 0
scoreboard players reset @a result-vote
title @a subtitle ["",{"translate":"mafia.game.time.night"}]
title @a title [""]
scoreboard players set @a master 0

#drug-addict
function mafia:ingame/day/drug-addict

bossbar set mafia:twilight visible true
bossbar set mafia:vote visible false

gamemode survival @a[tag=player]

scoreboard players enable @a button
scoreboard players set @a button 0

execute as @e[tag=loc_stmp] at @a if score @p[distance=0] Id = @s master run tp @p @s

kill @e[type=minecraft:area_effect_cloud]