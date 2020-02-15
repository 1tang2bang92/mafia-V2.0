execute if entity @e[tag=job,tag=spy,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add spy touch 1
execute if entity @e[tag=job,tag=soldier,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add soldier touch 1
execute if entity @e[tag=job,tag=politician,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add politician touch 1
execute if entity @e[tag=job,tag=reporter,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add reporter touch 1
execute if entity @e[tag=job,tag=robber,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add robber touch 1
execute if entity @e[tag=job,tag=detective,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add detective touch 1
execute if entity @e[tag=job,tag=drugaddict,tag=zombie,nbt={HurtTime:10s}] run scoreboard players add drugaddict touch 1

execute if score spy touch matches 2.. run scoreboard players set spy touch 0
execute if score soldier touch matches 2.. run scoreboard players set soldier touch 0
execute if score politician touch matches 2.. run scoreboard players set politician touch 0
execute if score reporter touch matches 2.. run scoreboard players set reporter touch 0
execute if score robber touch matches 2.. run scoreboard players set robber touch 0
execute if score detective touch matches 2.. run scoreboard players set detective touch 0
execute if score drugaddict touch matches 2.. run scoreboard players set drugaddict touch 0

execute as @a[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] at @s anchored eyes positioned ^ ^ ^1 run title @s title [""]
execute as @a[x=-1025,y=100,z=-1010,dx=8,dy=10,dz=20] at @s anchored eyes positioned ^ ^ ^1 run title @s subtitle ["",{"nbt":"ArmorItems[3].tag.display.Lore[0]","entity":"@e[sort=nearest,limit=1,distance=..1]"}]

execute if score spy touch matches 1 run replaceitem entity @e[tag=job,tag=spy] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score soldier touch matches 1 run replaceitem entity @e[tag=job,tag=soldier] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score politician touch matches 1 run replaceitem entity @e[tag=job,tag=politician] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score reporter touch matches 1 run replaceitem entity @e[tag=job,tag=reporter] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score robber touch matches 1 run replaceitem entity @e[tag=job,tag=robber] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score detective touch matches 1 run replaceitem entity @e[tag=job,tag=detective] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}
execute if score drugaddict touch matches 1 run replaceitem entity @e[tag=job,tag=drugaddict] armor.head minecraft:barrier{display:{Lore:["left click to activate this role"]}}

execute if score spy touch matches 0 run replaceitem entity @e[tag=job,tag=spy] armor.head minecraft:carrot_on_a_stick{CustomModelData:4,display:{Lore:["left click to deactivate this role"]}}
execute if score soldier touch matches 0 run replaceitem entity @e[tag=job,tag=soldier] armor.head minecraft:carrot_on_a_stick{CustomModelData:5,display:{Lore:["left click to deactivate this role"]}}
execute if score politician touch matches 0 run replaceitem entity @e[tag=job,tag=politician] armor.head minecraft:carrot_on_a_stick{CustomModelData:6,display:{Lore:["left click to deactivate this role"]}}
execute if score reporter touch matches 0 run replaceitem entity @e[tag=job,tag=reporter] armor.head minecraft:carrot_on_a_stick{CustomModelData:7,display:{Lore:["left click to deactivate this role"]}}
execute if score robber touch matches 0 run replaceitem entity @e[tag=job,tag=robber] armor.head minecraft:carrot_on_a_stick{CustomModelData:8,display:{Lore:["left click to deactivate this role"]}}
execute if score detective touch matches 0 run replaceitem entity @e[tag=job,tag=detective] armor.head minecraft:carrot_on_a_stick{CustomModelData:9,display:{Lore:["left click to deactivate this role"]}}
execute if score drugaddict touch matches 0 run replaceitem entity @e[tag=job,tag=drugaddict] armor.head minecraft:carrot_on_a_stick{CustomModelData:10,display:{Lore:["left click to deactivate this role"]}}