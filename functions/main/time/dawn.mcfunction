execute if score Tick master = PT3 master run time add 10t
execute if score Tick master = PT3 master run scoreboard players set Tick master 0
execute unless score Tick master = PT3 master run scoreboard players add Tick master 1
execute if score Time master matches 0..100 run function mafia:main/time/set_day
