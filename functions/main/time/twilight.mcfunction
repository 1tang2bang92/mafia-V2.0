execute if score Tick master = PT3 master run time add 10t
execute if score Tick master = PT3 master run scoreboard players set Tick master 0
execute unless score Tick master = PT3 master run scoreboard players add Tick master 1
execute if score Time master matches 16000.. run function mafia:main/time/set_midnight

scoreboard players set tw_left master 16000
scoreboard players operation tw_left master -= Time master
execute store result bossbar mafia:twilight value run scoreboard players get tw_left master