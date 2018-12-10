#faint function (single use)
tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 마피아","color":"dark_red","bold":false},{"text":"가 당신을 기절시켰습니다.","color":"gold"}]
#separate dead player (scores={deathCount=1})
scoreboard players set @s deathCount 0
execute as @s run summon area_effect_cloud ~ ~ ~ {Tags:["deathMarker"],Duration:600000}
tp @e[type=minecraft:area_effect_cloud,tag=deathMarker] @s
tag @s add death
spawnpoint @s ~ ~ ~
execute unless block ~ ~ ~ minecraft:air if block ~ ~ ~1 air run spawnpoint @s ~ ~ ~1
execute unless block ~ ~ ~ minecraft:air if block ~ ~ ~-1 air run spawnpoint @s ~ ~ ~-1
execute unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ air run spawnpoint @s ~ ~1 ~
execute unless block ~ ~ ~ minecraft:air if block ~ ~-1 ~ air run spawnpoint @s ~ ~-1 ~
execute unless block ~ ~ ~ minecraft:air if block ~1 ~ ~ air run spawnpoint @s ~1 ~ ~
execute unless block ~ ~ ~ minecraft:air if block ~-1 ~ ~ air run spawnpoint @s ~-1 ~ ~