execute if score GameStatus master matches 2 run scoreboard players remove CountDown master 1
execute if score CountDown master matches 1..100 run title @a[gamemode=adventure] subtitle ["",{"text":"Game starts in...","color":"gray"}]
execute if score CountDown master matches 99..100 run title @a[gamemode=adventure] title ["",{"text":"5","color":"green","bold":true}]
execute if score CountDown master matches 79..80 run title @a[gamemode=adventure] title ["",{"text":"4","color":"green","bold":true}]
execute if score CountDown master matches 59..60 run title @a[gamemode=adventure] title ["",{"text":"3","color":"yellow","bold":true}]
execute if score CountDown master matches 39..40 run title @a[gamemode=adventure] title ["",{"text":"2","color":"red","bold":true}]
execute if score CountDown master matches 19..20 run title @a[gamemode=adventure] title ["",{"text":"1","color":"red","bold":true}]
execute if score GameStatus master matches 2 if score CountDown master matches 0 run function mafia:game/start