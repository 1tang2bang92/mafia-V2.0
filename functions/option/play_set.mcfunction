execute if score play detail matches 0 run data merge entity @e[tag=play,tag=item,tag=Center,limit=1] {CustomName:"\"Night Length\"",Item:{id:"player_head",tag:{SkullOwner:{Id:"c0479b63-4eb6-4f07-a685-34e5df",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmZlOGNmZjc1ZjdkNDMzMjYwYWYxZWNiMmY3NzNiNGJjMzgxZDk1MWRlNGUyZWI2NjE0MjM3NzlhNTkwZTcyYiJ9fX0="}]}}}}}
execute if score play detail matches 1 run data merge entity @e[tag=play,tag=item,tag=Center,limit=1] {CustomName:"\"Jobs\"",Item:{id:"carrot_on_a_stick",tag:{CustomModelData:1}}}

execute if score play detail matches 1 unless entity @e[tag=job] if entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] run function mafia:option/play_job_summon
execute unless score play detail matches 1 if entity @e[tag=job] as @e[tag=job] run tp @s ~ ~-100 ~
execute unless score play detail matches 1 if entity @e[tag=job] run kill @e[tag=job]

execute if score play detail matches 0 unless entity @e[tag=time] if entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] run function mafia:option/play_time_summon
execute unless score play detail matches 0 if entity @e[tag=time] as @e[tag=time] run tp @s ~ ~-100 ~
execute unless score play detail matches 0 if entity @e[tag=time] run kill @e[tag=time]

execute if score play detail matches 2 run data merge entity @e[tag=play,tag=item,tag=Center,limit=1] {CustomName:"\"Performance\"",Item:{id:"repeater"}}

execute if score play detail matches 2 unless entity @e[tag=perf] if entity @p[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] run function mafia:option/play_perf_summon
execute unless score play detail matches 2 if entity @e[tag=perf] as @e[tag=perf] run tp @s ~ ~-100 ~
execute unless score play detail matches 2 if entity @e[tag=perf] run kill @e[tag=perf]