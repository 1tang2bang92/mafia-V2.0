summon minecraft:armor_stand 1000 100 1000 {NoGravity:1,Marker:1,Tags:["load"]}
execute as @e[tag=load] at @s run setblock ~ ~1 ~ redstone_block