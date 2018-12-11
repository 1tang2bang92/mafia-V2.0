scoreboard players add @a[tag=player,scores={Id=1..}] Id 1
scoreboard players set @r[tag=player,scores={Id=..0}] Id 1
execute if entity @p[tag=player,scores={Id=..0}] run function mafia:game/start_id