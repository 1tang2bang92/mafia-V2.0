#faint-loop function (loop)

#run (tag=death) = true
execute if entity @e[type=minecraft:area_effect_cloud,tag=deathMarker,distance=..1] run tp @s @e[tag=deathMarker,limit=1]
give @s[scores={LT=1,job-soldier=0}] minecraft:music_disc_11{placeholder:1b,CustomModelData:1,display:{Name:"{\"text\":\" \"}"}} 36
replaceitem entity @s[scores={LT=1,job-soldier=0}] weapon.offhand minecraft:music_disc_11{placeholder:1b,CustomModelData:1,display:{Name:"{\"text\":\" \"}"}} 1
execute as @e[type=item,nbt={Item:{tag:{placeholer:1b}}}] run data merge entity @s {PickupDelay:0s}
effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 5 true
particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 0.5 0 0 20 force @a[distance=1..]