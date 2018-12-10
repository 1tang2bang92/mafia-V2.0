#faint-loop function (loop)

#run (tag=death) = true
execute if entity @e[type=minecraft:area_effect_cloud,distance=..1] run tp @s @e[tag=deathMarker,limit=1]
execute if data entity @s {Health:20} unless entity @e[type=minecraft:area_effect_cloud,distance=..1] run 