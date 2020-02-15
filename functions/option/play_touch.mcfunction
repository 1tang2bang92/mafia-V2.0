execute if entity @e[tag=play,tag=zombie,nbt={HurtTime:10s}] run scoreboard players set play touch 1
execute if entity @e[tag=play,tag=right,nbt={HurtTime:10s}] run scoreboard players add play detail 1
execute if entity @e[tag=play,tag=left,nbt={HurtTime:10s}] run scoreboard players remove play detail 1
execute if score play detail matches 3.. run scoreboard players set play detail 0
execute if score play detail matches ..-1 run scoreboard players set play detail 2
execute if score play touch matches 1.. run function mafia:option/play_set
scoreboard players set play touch 0