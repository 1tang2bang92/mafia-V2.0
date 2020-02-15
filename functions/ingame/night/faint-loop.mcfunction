#faint-loop function (loop)

#run (tag=death) = true
execute if entity @e[type=minecraft:area_effect_cloud,tag=deathMarker] run tp @s @e[tag=deathMarker,limit=1]
give @s[scores={LT=1,job-soldier=0}] minecraft:music_disc_11{placeholder:1b,CustomModelData:1,display:{Name:"{\"text\":\" \"}"}} 36
replaceitem entity @s[scores={LT=1,job-soldier=0}] weapon.offhand minecraft:music_disc_11{placeholder:1b,CustomModelData:1,display:{Name:"{\"text\":\" \"}"}} 1
kill @e[type=item,nbt={Item:{id:"minecraft:music_disc_11"}}]
execute store result score @s master run clear @s minecraft:music_disc_11 0
execute if entity @s[scores={job-soldier=0}] unless score @s master matches 37 run give @s minecraft:music_disc_11{placeholder:1b,CustomModelData:1,display:{Name:"{\"text\":\" \"}"}} 1

effect give @s minecraft:invisibility 1 0 true
effect give @s minecraft:resistance 1 5 true

particle minecraft:dust 1 1 1 1 ~ ~1 ~ 0 0.5 0 0 20 force @a[distance=1..]