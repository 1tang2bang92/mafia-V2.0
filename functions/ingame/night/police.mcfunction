tag @s add police-target
summon area_effect_cloud ~ ~ ~ {Tags:["imprisonment"],Duration:600000}
scoreboard players set @e[tag=imprisonment,limit=1] master 600
function mafia:ingame/night/police-countdown