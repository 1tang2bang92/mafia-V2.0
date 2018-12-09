#플레이어수+이펙트(alwaays)
execute if score GameStatus master matches 1 run effect give @a[gamemode=adventure] resistance 100000 5 true
execute if score GameStatus master matches 1 store result score TotalPlayerCount master run effect give @a[gamemode=adventure] minecraft:night_vision 20 1 true

#게임플레이 구간입장(GameStatus = 1)
execute as @a[x=-4,y=105,z=37,dx=8,dy=8,dz=1,gamemode=adventure] run tellraw @a ["",{"selector":"@s","bold":true},{"text":" has join the game","color":"dark_gray","bold":false}]
execute if score GameStatus master matches 1 run tp @a[x=-4,y=105,z=37,dx=8,dy=8,dz=1] 1108 200 1125
execute if score GameStatus master matches 1 store result score CurrentPlayerCount master run xp add @a[gamemode=adventure,x=1090,y=199,z=1106,dx=45,dz=42,dy=5] 0 points
execute unless score GameStatus master matches 1..2 store result score CurrentPlayerCount master run xp add @a[gamemode=adventure,tag=player] 0 points

#대기실인원수가 플레이어수랑 같으면 게임시작 펑션 실행(GameStatus=1)
execute if score GameStatus master matches 1 if score TotalPlayerCount master matches 4.. if score TotalPlayerCount master = CurrentPlayerCount master run scoreboard players set CountDown master 100
execute if score GameStatus master matches 1 if score TotalPlayerCount master matches 4.. if score TotalPlayerCount master = CurrentPlayerCount master run scoreboard players set GameStatus master 2
execute if score GameStatus master matches 2 if score TotalPlayerCount master = CurrentPlayerCount master run function mafia:game/start_countdown

#게임중 들어오는 플레이어들 관리(GameStatus>=3)


#게임중 게임에 속해있는 플레이어가 나간것 감지 (pause)(GameStatus>=3)
execute if score GameStatus master matches 3.. unless score TotalPlayerCount master = CurrentPlayerCount master run scoreboard players set GameStatus master -1
execute if score GameStatus master matches -1 run scoreboard players set CountDown master 600
execute if score GameStatus master matches -1 as @a[tag=player,gamemode=adventure] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["Pause"],Duration:600000}
execute if score GameStatus master matches -1 run scoreboard players set GameStatus master 0
execute if score GameStatus master matches 0 if score CountDown master matches 1.. run scoreboard players remove CountDown master 1
execute if score GameStatus master matches ..0 as @e[tag=Pause] at @s run tp @p[limit=1,sort=nearest,distance=..1] @s
execute if score GameStatus master matches ..0 if score CountDown master matches 1 run tellraw @a ["",{"text":"A player has left the game. Would you like to continue without him? \n"},{"text":"[Yes]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/execute if score GameStatus master matches ..0 run function mafia:game/resume_game"}}]
execute if score GameStatus master matches ..0 if score TotalPlayerCount master = CurrentPlayerCount master run function mafia:game/resume_game
execute if entity @e[tag=Pause] if score GameStatus master matches 1.. run kill @e[tag=Pause]

#쿨다운
scoreboard players remove @a[scores={cool=1..}] cool 1