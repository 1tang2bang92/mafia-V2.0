#faint-loop function (loop)

#run (tag=death) = true
execute if entity @e[type=minecraft:area_effect_cloud,tag=deathMarker,distance=..1] run tp @s @e[tag=deathMarker,limit=1]
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 5 true