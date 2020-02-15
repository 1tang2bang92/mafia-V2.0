#faint function (single use)
tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.faint","with":[{"translate":"mafia.ability.name.mafia","color":"dark_red","bold":true}]},"\n\n",{"translate":"mafia.system.chatui.bot"}]
gamemode adventure @s

#mafia
schedule function mafia:ingame/night/mafia_all 10s
tellraw @a[scores={job-mafia=1,invisible=1},tag=player] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.error"},"\n",{"translate":"mafia.game.mafia.error1"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @a[scores={job-mafia=1,invisible=0},tag=player] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.error"},"\n\n",{"translate":"mafia.system.chatui.bot"}]

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