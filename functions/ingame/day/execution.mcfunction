scoreboard players set @a[tag=player] Id 0
tag @s remove player
function mafia:game/start_id
tag @s remove voted
tag @s remove voted_yes
gamemode spectator @s
tp @s 1108 109 1125
execute store result score TotalPlayerCount master run tellraw @a[tag=player] ["\n",{"translate":"mafia.game.execution"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
scoreboard players operation CurrentPlayerCount master = TotalPlayerCount master
function mafia:main/player_count
function mafia:ingame/day/calculation