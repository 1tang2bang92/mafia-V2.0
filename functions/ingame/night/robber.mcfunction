tag @s add robber-target
scoreboard players operation @p[scores={job-robber=1}] job-citizen = @s job-citizen
scoreboard players operation @p[scores={job-robber=1}] job-detective = @s] job-detective
scoreboard players operation @p[scores={job-robber=1}] job-doctor = @s job-doctor
scoreboard players operation @p[scores={job-robber=1}] job-drugaddict = @s job-drugaddict
scoreboard players operation @p[scores={job-robber=1}] job-police = @s job-police
scoreboard players operation @p[scores={job-robber=1}] job-politician = @s job-politician
scoreboard players operation @p[scores={job-robber=1}] job-reporter = @s job-reporter
scoreboard players operation @p[scores={job-robber=1}] job-robber = @s job-robber
scoreboard players operation @p[scores={job-robber=1}] job-soldier = @s job-soldier
scoreboard players operation @p[scores={job-robber=1}] job-spy = @s job-spy
scoreboard players operation @p[scores={job-robber=1}] job-mafia = @s job-mafia

#마피아 죽여주세요 ㅋㅋㅋㅋㅋ

scoreboard players set @s job-citizen 1

scoreboard players operation TotalPlayerCount master = CurrnetPlayerCount master