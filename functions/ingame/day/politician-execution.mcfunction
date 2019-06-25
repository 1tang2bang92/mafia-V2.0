tag @s remove voted
tag @s remove voted_yes
execute store result score TotalPlayerCount master run tellraw @a[tag=player] ["\n",{"translate":"mafia.ability.name.politician","color":"gold","bold":"true"},{"translate":"mafia.game.politician_execution"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
function mafia:main/player_count
function mafia:ingame/day/calculation