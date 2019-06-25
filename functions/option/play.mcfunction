execute if score @s touch matches 4.. run scoreboard players set @s touch 1
execute if score @s touch matches ..0 run scoreboard players set @s touch 3
	
#item data merge
execute if score @s touch matches 1 run 
execute if score @s touch matches 2 run 
execute if score @s touch matches 3 run 
	
#change setting
execute if score @s touch matches 1 run 
execute if score @s touch matches 2 run 
execute if score @s touch matches 3 run 
	
#detail option
execute if score @s detail matches 1 if score @s touch matches 1 run
execute if score @s detail matches 1 if score @s touch matches 2 run
execute if score @s detail matches 1 if score @s touch matches 3 run