time set 20000
scoreboard players set TimeStatus master 4
scoreboard players set PT3 master 3
tag @a[scores={job-politician=1}] add extra-vote

bossbar set mafia:dawn visible true
bossbar set mafia:midnight visible false

schedule function mafia:ingame/night/mafia_all 10s
tellraw @a[team=Mafia,scores={invisible=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.error"},"\n",{"translate":"mafia.game.mafia.error1"},"\n\n",{"translate":"mafia.system.chatui.bot"}]