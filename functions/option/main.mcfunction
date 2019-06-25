execute unless entity @e[tag=map] if entity @a[x=-1000,y=101,z=-975,distance=..5] run function mafia:option/map_summon
execute unless entity @a[x=-1000,y=101,z=-975,distance=..5] as @e[tag=map] at @s run tp @s ~ ~-100 ~
execute unless entity @a[x=-1000,y=101,z=-975,distance=..5] run kill @e[tag=map]
execute if entity @e[tag=map] run function mafia:option/map_touch