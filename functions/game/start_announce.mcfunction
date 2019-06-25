title @a[tag=player,scores={job-mafia=1}] title ["",{"text":"MAFIA","color":"dark_red","bold":true}]
title @a[tag=player,scores={job-citizen=1}] title ["",{"text":"Citizen","color":"aqua","bold":true}]
title @a[tag=player,scores={job-police=1}] title ["",{"text":"POLICE","color":"dark_blue","bold":true}]
title @a[tag=player,scores={job-doctor=1}] title ["",{"text":"DOCTOR","color":"white","bold":true}]
title @a[tag=player,scores={job-soldier=1}] title ["",{"text":"SOLDIER","color":"dark_green","bold":true}]
title @a[tag=player,scores={job-reporter=1}] title ["",{"text":"REPORTER","color":"dark_aqua","bold":true}]
title @a[tag=player,scores={job-politician=1}] title ["",{"text":"POLITICIAN","color":"gold","bold":true}]
title @a[tag=player,scores={job-spy=1}] title ["",{"text":"SPY","color":"red","bold":true}]
title @a[tag=player,scores={job-detective=1}] title ["",{"text":"Detective","color":"dark_gray","bold":true}]
title @a[tag=player,scores={job-robber=1}] title ["",{"text":"Robber","color":"black","bold":true}]
title @a[tag=player,scores={job-drugaddict=1}] title ["",{"text":"Drugaddict","color":"light_purple","bold":true}]

title @a subtitle ["",{"text":"is your job.","color":"gray"}]

tellraw @a[tag=player] [{"translate":"mafia.system.chatui.top"}]

tellraw @a[tag=player,scores={job-mafia=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.mafia","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.mafia"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text2","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.mafia"}}},{"translate":"mafia.system.ability.help.mafia","color":"light_gray"}]
tellraw @a[tag=player,scores={job-citizen=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.citizen","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.citizen"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.citizen"}}},{"translate":"mafia.system.ability.help.citizen","color":"light_gray"}]
tellraw @a[tag=player,scores={job-police=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.police","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.police"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.police"}}},{"translate":"mafia.system.ability.help.police","color":"light_gray"}]
tellraw @a[tag=player,scores={job-doctor=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.doctor","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.doctor"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.doctor"}}},{"translate":"mafia.system.ability.help.doctor","color":"light_gray"}]
tellraw @a[tag=player,scores={job-soldier=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.soldier","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.soldier"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.soldier"}}},{"translate":"mafia.system.ability.help.soldier","color":"light_gray"}]
tellraw @a[tag=player,scores={job-reporter=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.reporter","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.reporter"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.reporter"}}},{"translate":"mafia.system.ability.help.reporter","color":"light_gray"}]
tellraw @a[tag=player,scores={job-politician=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.politician","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.politician"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.politician"}}},{"translate":"mafia.system.ability.help.politician","color":"light_gray"}]
tellraw @a[tag=player,scores={job-spy=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.spy","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.spy"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.spy"}}},{"translate":"mafia.system.ability.help.spy","color":"light_gray"}]
tellraw @a[tag=player,scores={job-detective=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.detective","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.detective"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.detective"}}},{"translate":"mafia.system.ability.help.detective","color":"light_gray"}]
tellraw @a[tag=player,scores={job-robber=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.robber","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.robber"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.robber"}}},{"translate":"mafia.system.ability.help.robber","color":"light_gray"}]
tellraw @a[tag=player,scores={job-drugaddict=1}] [{"translate":"mafia.system.ability.text0"},{"translate":"mafia.system.ability.name.drugaddict","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover2.drugaddict"}}},{"translate":"mafia.system.ability.text1"},{"translate":"mafia.system.ability.text3","hoverEvent":{"action":"show_text","value":{"translate":"mafia.system.ability.hover.drugaddict"}}},{"translate":"mafia.system.ability.help.drugaddict","color":"light_gray"}]

tellraw @a[tag=player] [{"translate":"mafia.system.ability.text4"}]
tellraw @a[tag=player] ["\n",{"translate":"mafia.system.chatui.bot"}]




















