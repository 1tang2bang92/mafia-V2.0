execute positioned 170 104 -28 as @a[dx=58,dz=58,dy=10] run scoreboard players enable @s button

execute positioned 190 104 -8 as @a[dx=19,dz=19,dy=10,scores={button=1..}] run scoreboard players set @s button 0
execute positioned 190 104 -8 as @a[dx=19,dz=19,dy=10,scores={button=..-1}] run scoreboard players set @s button 0

execute positioned 190 104 12 as @a[dx=19,dz=19,dy=10] run function mafia:tutorial/recipe/main

execute positioned 170 104 -8 as @a[dx=19,dz=19,dy=10] run function mafia:tutorial/ability/main
execute positioned 170 104 -8 if entity @p[dx=19,dz=19,dy=10,advancements={mafia:tut_2=false}] unless entity @e[tag=dummy] run summon villager 179 105 1 {CustomName:"[{\"translate\":\"mafia.ability.name.citizen\"}]",CustomNameVisible:1,NoAI:1,Tags:["dummy"]}
execute positioned 170 104 -8 unless entity @p[dx=19,dz=19,dy=10,advancements={mafia:tut_2=false}] if entity @e[tag=dummy] run kill @e[tag=dummy]