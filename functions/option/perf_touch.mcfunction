execute if entity @e[tag=perf,tag=fog,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add fog master 1
execute if entity @e[tag=perf,tag=tip,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add tip master 1

execute if score fog master matches 2.. run scoreboard players set fog master 0
execute if score tip master matches 2.. run scoreboard players set tip master 0

execute if score fog master matches 0 run replaceitem entity @e[tag=perf,tag=fog] armor.head minecraft:barrier
execute if score fog master matches 0 run data merge entity @e[tag=perf,tag=fog,limit=1] {CustomName:"\"Fog : OFF\""}
execute if score fog master matches 1 run replaceitem entity @e[tag=perf,tag=fog] armor.head minecraft:air
execute if score fog master matches 1 run data merge entity @e[tag=perf,tag=fog,limit=1] {CustomName:"\"Fog : ON\""}

execute if score tip master matches 0 run replaceitem entity @e[tag=perf,tag=tip] armor.head minecraft:player_head{display:{Name:"Redstone Lamp (Off)"},SkullOwner:{Id:"c7b375a7-ed14-4448-acc5-01fab28f1546",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ1OGQ0NTkxNjVkNTk3ODc1M2VhYjVmNDRiZDYwOWYzZGI4NGVlM2JiMDE2OTMyMDUyMzg5ZDM4Yjg5NSJ9fX0="}]}}}
execute if score tip master matches 0 run data merge entity @e[tag=perf,tag=tip,limit=1] {CustomName:"\"Tips : OFF\""}
execute if score tip master matches 1 run replaceitem entity @e[tag=perf,tag=tip] armor.head minecraft:player_head{display:{Name:"Redstone Lamp (On)"},SkullOwner:{Id:"b6864e28-93f7-4c61-b497-8f2261",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWFmZjkzZWJlY2MxZjhmYmQxM2JhNzgzOWVjN2JkY2RlY2FiN2MwN2ZkOGJhNzhlZTc4YWQwYmQzYWNjYmUifX19"}]}}}
execute if score tip master matches 1 run data merge entity @e[tag=perf,tag=tip,limit=1] {CustomName:"\"Tips : ON\""}

execute if score fog master matches 1 as @e[tag=fog,tag=perf] at @s run particle minecraft:campfire_signal_smoke ~ ~0.5 ~ 0.2 0.2 0.2 0 5