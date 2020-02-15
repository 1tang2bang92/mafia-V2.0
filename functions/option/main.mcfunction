#map option
execute unless entity @e[tag=map] if entity @a[x=-1000,y=101,z=-975,distance=..5] run function mafia:option/map_summon
execute unless entity @a[x=-1000,y=101,z=-975,distance=..5] as @e[tag=map] at @s run tp @s ~ ~-100 ~
execute unless entity @a[x=-1000,y=101,z=-975,distance=..5] run kill @e[tag=map]
execute if entity @e[tag=map] run function mafia:option/map_touch

#play option
execute unless entity @e[tag=play] if entity @a[x=-1025,y=101,z=-1000,distance=..5] run function mafia:option/play_summon
execute unless entity @a[x=-1025,y=101,z=-1000,distance=..5] as @e[tag=play] at @s run tp @s ~ ~-100 ~
execute unless entity @a[x=-1025,y=101,z=-1000,distance=..5] run kill @e[tag=play]
execute if entity @e[tag=play] run function mafia:option/play_touch

execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=job] as @e[tag=job] run tp @s ~ ~-100 ~
execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=job] run kill @e[tag=job]
execute if entity @e[tag=job] run function mafia:option/job_touch

execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=time] as @e[tag=time] run tp @s ~ ~-100 ~
execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=time] run kill @e[tag=time]
execute if entity @e[tag=time] run function mafia:option/time_touch

execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=perf] as @e[tag=perf] run tp @s ~ ~-100 ~
execute unless entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] if entity @e[tag=perf] run kill @e[tag=perf]
execute if entity @e[tag=perf] run function mafia:option/perf_touch