scoreboard players set @s button 0
scoreboard players set @s tut-kill 0
clear @s
kill @e[type=villager,tag=dummy]
execute unless entity @e[type=villager,tag=dummy] run summon villager 179 105 1 {CustomName:"[{\"translate\":\"mafia.ability.name.citizen\"}]",CustomNameVisible:1,NoAI:1,Tags:["dummy"]}
team leave @s