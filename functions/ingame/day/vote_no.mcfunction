execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] voted 1
execute if entity @s[tag=!voted] run tellraw @s [{"translate":"mafia.system.chatui.top"},"\n\n\n\n\n",{"selector":"@p[scores={candidate=1}]","color":"dark_red","bold":true},{"translate":"mafia.game.vote_no.main"},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @s[tag=!voted] run tag @s add voted
scoreboard players set @s button 0