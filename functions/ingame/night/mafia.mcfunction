particle minecraft:witch ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a
scoreboard players add @s invisible 1
scoreboard players set @s[scores={invisible=2}] invisible 0
#mafia-loop
scoreboard players set @s rightC 0
#은신상태가 아닐때 (scores={invisible=1})
effect give @s minecraft:invisibility 100000 255
effect give @s minecraft:speed 100000 5 true
effect give @s minecraft:regeneration 100000 1 true
effect give @s minecraft:haste 100000 2 true
execute if score Date master matches 1 run effect give @s minecraft:strength 100000 0 true
execute if score Date master matches 2.. run effect give @s minecraft:strength 100000 1 true
tellraw @s[scores={invisible=1}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.invisible.on"},"\n\n",{"translate":"mafia.system.chatui.bot"}]

#은신 상태일때 (scores={invisible=0})
effect clear @s[scores={invisible=0}] minecraft:invisibility
effect clear @s[scores={invisible=0}] minecraft:speed
effect clear @s[scores={invisible=0}] minecraft:regeneration
effect clear @s[scores={invisible=0}] minecraft:haste
tellraw @s[scores={invisible=0}] ["\n",{"translate":"mafia.system.chatui.top"},"\n\n",{"translate":"mafia.game.mafia.invisible.off"},"\n\n",{"translate":"mafia.system.chatui.bot"}]
