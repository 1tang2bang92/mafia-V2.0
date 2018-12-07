particle dust 0 0 1 1 ~ ~ ~ 0 0 0 0 1 force
effect give @e[distance=..1] minecraft:glowing
execute as @s if entity @p[distance=..30] positioned ^ ^ ^1 run function mafia:ingame/night/test