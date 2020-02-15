#���ӷ�
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doLimitedCrafting true
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

#������Ƽ�� �����?
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
scoreboard objectives remove fall_dist
scoreboard objectives remove Timer
scoreboard objectives remove candidate
scoreboard objectives remove invisible
scoreboard objectives remove deathCount
scoreboard objectives remove cool
scoreboard objectives remove Id
scoreboard objectives remove detail
scoreboard objectives remove touch
scoreboard objectives remove TS-user
scoreboard objectives remove TS-victim
scoreboard objectives remove TS-time-h
scoreboard objectives remove TS-time-m
scoreboard objectives remove button
scoreboard objectives remove tut-kill
scoreboard objectives remove game-exit

#�� �����?
team remove Mafia

#������Ƽ�� ����
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
scoreboard objectives add invisible dummy
scoreboard objectives add deathCount deathCount
scoreboard objectives add cool dummy
scoreboard objectives add Id dummy
scoreboard objectives add fall_dist dummy "Fall Distance"

scoreboard objectives add TS-user dummy "Time Stamp - User Id"
scoreboard objectives add TS-victim dummy "Time Stamp - Victim Id"
scoreboard objectives add TS-time-h dummy "Time Stamp - Time - Hour"
scoreboard objectives add TS-time-m dummy "Time Stamp - Time - Minute"

scoreboard objectives add LT dummy "Life Time"
scoreboard objectives add master dummy "Master Number Storage"
scoreboard objectives add Timer dummy "Timer"

scoreboard objectives add touch dummy
scoreboard objectives add detail dummy

scoreboard objectives add button trigger "What you've pressed"

scoreboard objectives add tut-kill minecraft.killed:minecraft.villager "Tutorial kill check"
scoreboard objectives add game-exit minecraft.dropped:minecraft.barrier "Exit Game"

scoreboard players set PT3 master 3
scoreboard players set GameStatus master 1
scoreboard players set TimeStatus master 1
scoreboard players set CurrentPlayerCount master 0
scoreboard players set 2 master 2
scoreboard players set -1 master -1
scoreboard players set GameLength master 5
scoreboard players set tw_left master 16000
scoreboard players set md_left master 20000
scoreboard players set dn_left master 24000
scoreboard players set SkipPlayerCount master 0

scoreboard players set @a cool 0
scoreboard players set @a rightC 0
scoreboard players set @a Id 0
scoreboard players set @a invisible 0

scoreboard players set fog master 0
scoreboard players set tip master 1

scoreboard players set 6 master 6
scoreboard players set 100 master 100
scoreboard players set 1000 maseter 1000

scoreboard players set Time-Hour master 0
scoreboard players set Time-Minute master 0

#bossbar세팅
bossbar remove mafia:twilight
bossbar remove mafia:midnight
bossbar remove mafia:dawn
bossbar remove mafia:vote

bossbar add mafia:twilight "Until Kill Time"
bossbar add mafia:midnight "Kill Time"
bossbar add mafia:dawn "Until Sunrise"
bossbar add mafia:vote "Until Vote Time"

bossbar set mafia:twilight color yellow
bossbar set mafia:midnight color red
bossbar set mafia:dawn color green
bossbar set mafia:vote color white

bossbar set mafia:twilight max 4000
bossbar set mafia:midnight max 4000
bossbar set mafia:dawn max 4000
bossbar set mafia:vote max 1200

bossbar set mafia:twilight players @a
bossbar set mafia:midnight players @a
bossbar set mafia:dawn players @a
bossbar set mafia:vote players @a
bossbar set mafia:twilight visible false
bossbar set mafia:midnight visible false
bossbar set mafia:dawn visible false
bossbar set mafia:vote visible false

#�� ����
team add Mafia

#?� 기본 ?�션
team modify Mafia nametagVisibility hideForOtherTeams
team modify Mafia friendlyFire false
team modify Mafia seeFriendlyInvisibles true