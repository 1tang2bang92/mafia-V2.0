#faint-loop function (loop)

#run (tag=death) = true
execute if entity @e[type=minecraft:area_effect_cloud,distance=..1] run tp @s @e[tag=deathMarker,limit=1]
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 5 true
execute if entity @s[nbt={Health:20f}] unless entity @e[type=minecraft:area_effect_cloud,distance=..1] run tag @s remove player
execute if entity @s[nbt={Health:20f}] unless entity @e[type=minecraft:area_effect_cloud,distance=..1] run gamemode spectator @s
execute if entity @s[nbt={Health:20f}] unless entity @e[type=minecraft:area_effect_cloud,distance=..1] run scoreboard players remove TotalPlayerCount 1
