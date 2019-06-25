execute if score Tick master = PT3 master run time add 10t
execute if score Tick master = PT3 master run scoreboard players set Tick master 0
execute unless score Tick master = PT3 master run scoreboard players add Tick master 1
execute if score Time master matches 0..100 run function mafia:main/time/set_day

scoreboard players set dn_left master 24000
scoreboard players operation dn_left master -= Time master
execute store result bossbar mafia:dawn value run scoreboard players get dn_left master

bossbar set mafia:dawn name [{"translate":"mafia.game.time.dawn"}," | ",{"translate":"mafia.game.time.current"},{"score":{"name":"Time-Hour","objective":"master"}},":",{"score":{"name":"Time-Minute","objective":"master"}}]