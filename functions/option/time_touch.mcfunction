execute if entity @e[tag=time,tag=zombie,nbt={HurtTime:10s}] run scoreboard players set time touch 1
execute if entity @e[tag=time,tag=up,nbt={HurtTime:10s}] run scoreboard players add GameLength master 1
execute if entity @e[tag=time,tag=down,nbt={HurtTime:10s}] run scoreboard players remove GameLength master 1
execute if score GameLength master matches 10.. run scoreboard players set GameLength master 5
execute if score GameLength master matches ..4 run scoreboard players set GameLength master 9
execute if score time touch matches 1.. run function mafia:option/time_set
scoreboard players set time touch 0