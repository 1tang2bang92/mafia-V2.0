title @a title ["",{"translate":"mafia.game.win.citizen"}]
kill @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:404}}}]
tellraw @a ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"translate":"mafia.game.win.chat"},{"selector":"@a[tag=player,tag=team_Citizen]","color":"gold","bold":true}]
scoreboard players set GameStatus master 1
schedule function mafia:game/end 15s