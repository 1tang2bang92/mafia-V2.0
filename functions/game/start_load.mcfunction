summon minecraft:armor_stand 1000 100 1000 {NoGravity:1b,Marker:1b,Tags:["load"]}
execute as @e[tag=load] at @s run setblock ~ ~1 ~ redstone_block