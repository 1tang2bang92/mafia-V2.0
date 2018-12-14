execute as @s[scores={rightC=1..}] run scoreboard players add @s master 1
execute if entity @s[scores={master=5..}] run tag @s remove death
execute if entity @s[scores={master=5..}] run kill @e[type=minecraft:area_effect_cloud,limit=1,distance=..1]
execute if entity @s[scores={master=5..}] run scoreboard players set @s job-soldier 0
execute if entity @s[scores={master=5..}] run scoreboard players set @s job-citizen 1
execute if entity @s[scores={master=5..}] run clear @s minecraft:carrot_on_a_stick{CustomModelData:6}
execute if entity @s[scores={master=5..}] run tellraw @s ["",{"text":"[Mafia V2.0]","color":"aqua","bold":true,"insertion":"/tellraw @p %s"},{"text":" 군인","color":"dark_green","bold":false},{"text":"의 생존기술로 기절상태를 벗어났습니다.","color":"gold"}]
execute if entity @s[scores={master=5..}] run scoreboard players set @s master 0
