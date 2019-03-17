title @a title ["",{"text":"Citizen","color":"gold","bold":true},{"text":" Wins!","color":"white","bold":true}]
tellraw @a ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" The Winners are; ","color":"white","bold":false},{"selector":"@a[tag=player,team=Citizen]","color":"gold","bold":true},{"text":"!","color":"white","bold":false}]
scoreboard players set GameStatus master 1
schedule function mafia:game/end 15s