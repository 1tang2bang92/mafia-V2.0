#loop 3.
execute positioned ~ ~-1 ~ if entity @p[distance=..1,tag=player] unless score @s Id = @p[distance=..1] Id as @s at @p[distance=..1] run function mafia:ingame/night/loop_4
execute positioned ~ ~-1 ~ if entity @p[distance=..1,tag=player] if score @s Id = @p[distance=..1] Id as @s positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function mafia:ingame/night/loop_1
execute positioned ~ ~-1 ~ unless entity @p[distance=..1,tag=player] as @s positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function mafia:ingame/night/loop_1