#tp @a ��ǥ���
tag @a[tag=!voted_yes] remove voted
scoreboard players set @a[tag=player,scores={candidate=1}] candidate 2
scoreboard players set @r[tag=player,scores={candidate=0}] candidate 1
execute as @a[tag=voted_yes,tag=player] run scoreboard players add @p[scores={candidate=1},tag=player] voted 1
scoreboard players enable @a[tag=player,tag=!voted_yes,tag=!voted] button
tellraw @a[tag=player,tag=!voted_yes,gamemode=adventure,tag=!voted] [{"translate":"mafia.system.chatui.top"},"\n\n\n",{"selector":"@p[scores={candidate=1}]","color":"dark_red","bold":true},{"translate":"mafia.game.vote0"},"\n",{"translate":"mafia.game.vote.button.yes","clickEvent":{"action":"run_command","value":"/trigger button set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"translate":"mafia.game.vote1"}]}}},{"text":" ","color":"none","underlined":false},{"translate":"mafia.game.vote.button.no","clickEvent":{"action":"run_command","value":"/trigger button set 2"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"translate":"mafia.game.vote2"}]}}},"\n\n\n\n",{"translate":"mafia.system.chatui.bot"}]