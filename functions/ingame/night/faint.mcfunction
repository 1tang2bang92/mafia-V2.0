#faint function (single use)

#separate dead player (scores={deathCount=1})
scoreboard players set @s deathCount 0
execute as @s run summon area_effect_cloud ~ ~ ~ {Tags:["deathMarker"],Duration:600000}
tp @e[type=minecraft:area_effect_cloud,tag=deathMarker] @s
tag @s add death
spawnpoint @s ~ ~ ~
