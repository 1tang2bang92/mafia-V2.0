scoreboard players add @s master 1
execute as @a[tag=team_Citizen,tag=player] if score @s Id = @p[distance=0] master facing entity @s feet positioned ~ ~1.6 ~ run particle dust 1 0 0 1 ^ ^ ^1.3 0 0 0 0 1 force @p[team=Mafia]
execute if score @s master < CurrentPlayerCount master as @s at @s run function mafia:ingame/night/mafia-detect