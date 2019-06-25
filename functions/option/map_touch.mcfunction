execute if entity @e[tag=map,tag=zombie,nbt={HurtTime:10s}] run scoreboard players set map touch 1
execute if entity @e[tag=map,tag=right,nbt={HurtTime:10s}] run scoreboard players add map detail 1
execute if entity @e[tag=map,tag=left,nbt={HurtTime:10s}] run scoreboard players remove map detail 1
execute if score map detail matches 4.. run scoreboard players set map detail 0
execute if score map detail matches ..-1 run scoreboard players set map detail 3
execute if score map touch matches 1.. run function mafia:option/map_set
scoreboard players set map touch 0