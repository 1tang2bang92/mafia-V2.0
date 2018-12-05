#게임룰
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doLimitedCrafting false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops true
gamerule doWeatherCycle false
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true

#오브젝티브 지우기
scoreboard objectives remove job-mafia
scoreboard objectives remove job-spy
scoreboard objectives remove job-police
scoreboard objectives remove job-doctor
scoreboard objectives remove job-reporter
scoreboard objectives remove job-soldier
scoreboard objectives remove job-politician
scoreboard objectives remove job-drugaddict
scoreboard objectives remove job-robber
scoreboard objectives remove job-citizen
scoreboard objectives remove job-detective
scoreboard objectives remove game-status
scoreboard objectives remove vote
scoreboard objectives remove voted
scoreboard objectives remove result-vote
scoreboard objectives remove rightC
scoreboard objectives remove LT
scoreboard objectives remove master
scoreboard objectives remove Timer
scoreboard objectives remove candidate

#팀 지우기
team remove Mafia
team remove Citizen

#오브젝티브 생성
scoreboard objectives add job-mafia dummy
scoreboard objectives add job-spy dummy
scoreboard objectives add job-police dummy
scoreboard objectives add job-doctor dummy
scoreboard objectives add job-reporter dummy
scoreboard objectives add job-soldier dummy
scoreboard objectives add job-politician dummy
scoreboard objectives add job-drugaddict dummy
scoreboard objectives add job-robber dummy
scoreboard objectives add job-citizen dummy
scoreboard objectives add job-detective dummy
scoreboard objectives add vote dummy
scoreboard objectives add voted dummy
scoreboard objectives add result-vote dummy
scoreboard objectives add rightC minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add candidate dummy

scoreboard objectives add LT dummy "Life Time"
scoreboard objectives add master dummy "Master Number Storage"
scoreboard objectives add Timer dummy "Timer"

scoreboard players set PT3 master 3
scoreboard players set GameStatus master 1
scoreboard players set TimeStatus master 1
scoreboard players set CurrentPlayerCount master 0
scoreboard players set 1200 master 1200
scoreboard players set 2 master 2
scoreboard players set GameLength master 5

#팀 생성
team add Mafia
team add Citizen