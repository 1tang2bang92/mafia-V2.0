execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] result-vote 1
execute if entity @s[tag=!voted] run scoreboard players add @p[scores={candidate=1}] voted 1
execute if entity @s[tag=!voted] run tellraw @s [{"translate":"mafia.system.chatui.top"},"\n\n\n",{"selector":"@p[scores={candidate=1}]","color":"dark_red","bold":true},{"translate":"mafia.game.vote_yes.main"},"\n\n",{"translate":"mafia.system.chatui.mid"}]
execute if entity @s[tag=!voted,tag=extra-vote] run tellraw @s ["\n",{"translate":"mafia.game.vote_yes.extra","color":"white","bold":false},"\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @s[tag=!voted,tag=!extra-vote] run tellraw @s ["\n",{"translate":"mafia.game.vote_yes.end","color":"white","bold":false},"\n\n",{"translate":"mafia.system.chatui.bot"}]
execute if entity @s[tag=!voted,tag=!extra-vote] run tag @s add voted_yes
execute if entity @s[tag=!voted,tag=!extra-vote] run tag @s add voted
execute if entity @s[tag=extra-vote] run tag @s remove extra-vote
scoreboard players set @s button 0