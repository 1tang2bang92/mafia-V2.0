#faint function (single use)
tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.ability.name.mafia","color":"dark_red","bold":false},{"translate":"mafia.game.mafia.faint"},"\n\n",{"translate":"mafia.system.chatui.bot"}]

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