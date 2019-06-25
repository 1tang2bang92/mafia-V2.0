title @a title ["",{"translate":"mafia.game.win.mafia"}]
tellraw @a ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"translate":"mafia.game.win.chat"},{"selector":"@a[tag=player,team=Mafia]","color":"gold","bold":true}]
scoreboard players set GameStatus master 1
schedule function mafia:game/end 15s