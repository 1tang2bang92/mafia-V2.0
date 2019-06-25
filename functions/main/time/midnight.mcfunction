execute if score Tick master = PT3 master run time add 10t
execute if score Tick master = PT3 master run scoreboard players set Tick master 0
execute unless score Tick master = PT3 master run scoreboard players add Tick master 1
execute if score Time master matches 20000.. run function mafia:main/time/set_dawn
execute if score TimeStatus master matches 3 run function mafia:ingame/night/main

scoreboard players set md_left master 20000
scoreboard players operation md_left master -= Time master
execute store result bossbar mafia:midnight value run scoreboard players get md_left master

bossbar set mafia:midnight name [{"translate":"mafia.game.time.midnight"}," | ",{"translate":"mafia.game.time.current"},{"score":{"name":"Time-Hour","objective":"master"}},":",{"score":{"name":"Time-Minute","objective":"master"}}]