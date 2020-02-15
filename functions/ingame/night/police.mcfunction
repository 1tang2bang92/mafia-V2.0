tag @s add police-target
summon area_effect_cloud ~ ~ ~ {Duration:600,Tags:["police"]}
tp @e[type=minecraft:area_effect_cloud,tag=police] @s
tellraw @s ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.police.arrest","with":[{"translate":"mafia.ability.name.police","color":"blue","bold":true}]},"\n\n",{"translate":"mafia.system.chatui.bot"}]
tellraw @p[scores={job-police=1},tag=!used-abil] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.police.investigate","with":[{"selector":"@p[tag=police-target]","color":"blue","bold":false}]},{"translate":"mafia.game.police.investigate.button","clickEvent":{"action":"run_command","value":"/trigger button set 1"}},"\n\n",{"translate":"mafia.system.chatui.bot"}]
scoreboard players set @p[scores={job-police=1}] cool 1200
scoreboard players set @p[scores={job-police=1}] master 0