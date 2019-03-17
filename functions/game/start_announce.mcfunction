
title @a[tag=player,scores={job-mafia=1}] title ["",{"text":"MAFIA","color":"dark_red","bold":true}]
tellraw @a[tag=player,scores={job-mafia=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Mafia [마피아]\n","color":"dark_red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"마피아\"","color":"dark_red"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 마피아 세력\n","color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤/낮으로 다른 사람들의 의심을 피해 시민 세력을 줄이십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold","bold":false},{"text":" 마피아 전용 아이템을 우클릭하면 능력이 사용됩니다.\n","color":"none"},{"text":"Tip! 마피아는 시민을 제거하기 위해선 은신 모드를 이용해야만 합니다. 은신은 당신의 이동속도를 늘리고, 공격력을 향상시켜줍니다. 또한 시민들의 위치를 대략적으로 알 수 있습니다. 은신을 사용할 시 다른 사람이 주위에 있는지 주의하십시오.\n","color":"gray"}]

title @a[tag=player,scores={job-citizen=1}] title ["",{"text":"Citizen","color":"aqua","bold":true}]
tellraw @a[tag=player,scores={job-citizen=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Citizen [시민]\n","color":"aqua","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"시민\"","color":"aqua"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤/낮으로 사람들을 의심해 마피아 세력을 줄이십시오."}]}}},{"text":"Tip! 은밀하게 은신을 사용하는 마피아를 찾으십시오.\n","color":"gray"}]

title @a[tag=player,scores={job-police=1}] title ["",{"text":"POLICE","color":"dark_blue","bold":true}]
tellraw @a[tag=player,scores={job-police=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Police [경찰]\n","color":"blue","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"경찰\"","color":"blue"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 의심 가는 플레이어를 구속하거나 수색해 마피아를 색출하십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"구속/수색하고자 하는 대상을 향해서 경찰 전용아이템을 우클릭하면 능력이 사용됩니다. (능력은 하루에 한번 사용 가능합니다.)\n","color":"none"},{"text":"Tip! 경찰은 사람들을 구속시켜 1분간 플레이어를 구속시킬수 있습니다. \n","color":"gray"}]

title @a[tag=player,scores={job-doctor=1}] title ["",{"text":"DOCTOR","color":"white","bold":true}]
tellraw @a[tag=player,scores={job-doctor=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Doctor [의사]\n","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"의사\"","color":"none"},{"text":"입니다."}]}},"color":"none"},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 마피아의 눈을 피해 기절한 사람을 살리십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"기절해 있는 사람을 향해서 의사 전용아이템을 우클릭하면 능력이 사용됩니다. (능력은 하루에 한번 사용 가능합니다.)\n","color":"none"},{"text":"Tip! 의사는 하루에 한번 기절한 사람을 살릴 수 있습니다. 의사의 수색능력에 따라 생존자들의 생존률이 올라갑니다.\n","color":"gray"}]

title @a[tag=player,scores={job-soldier=1}] title ["",{"text":"SOLDIER","color":"dark_green","bold":true}]
tellraw @a[tag=player,scores={job-soldier=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Soldier [군인]\n","color":"dark_green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"군인\"","color":"dark_green"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 시민보다 가벼운 마음으로 돌아다니세요."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"기절상태에서 벗어날 때까지 군인 전용 아이템을 우클릭하면 회생합니다.(1회성 능력)\n","color":"none"},{"text":"Tip! 마피아에게서 하루를 살 수 있는 매우 좋은 직업중 하나입니다. 그러나 능력의 사용으로 직업이 시민으로 변경되어 죽을 수 있으니 주의하시기 바랍니다.\n","color":"gray"}]

title @a[tag=player,scores={job-reporter=1}] title ["",{"text":"REPORTER","color":"dark_aqua","bold":true}]
tellraw @a[tag=player,scores={job-reporter=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Reporter [기자]\n","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"기자\"","color":"dark_aqua"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 취재를 통해 마피아를 모두에게 공개하십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"능력을 사용한 다음날 아침 사용한 대상의 능력을 모두에게 알립니다.(1회성 능력)\n","color":"none"},{"text":"Tip! 당신이 명탐정이라면 마피아 1명을 바로 알 수 있는 직업입니다. 그러나 의사와 같이 중요한 직책을 노출시킬경우 게임이 불리하게 흘러갈 수 있는 중요한 직업입니다.\n","color":"gray"}]

title @a[tag=player,scores={job-politician=1}] title ["",{"text":"POLITICIAN","color":"gold","bold":true}]
tellraw @a[tag=player,scores={job-politician=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Politician [정치인]\n","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"정치인\"","color":"gold"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"투표에 강한 영향력을 행사해 마피아를 처형시키십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"의심되는 2명의 사람에게 투표할 수 있습니다. 또한 투표로 죽지않습니다.(패시브능력)\n","color":"none"},{"text":"Tip! 낮 투표의 여론을 주도할 수 있는 직업입니다. 또한 마피아 세력과 시민 세력의 수가 같고 당신이 생존해있다면 게임에서 이길수 있습니다.\n","color":"gray"}]

title @a[tag=player,scores={job-spy=1}] title ["",{"text":"SPY","color":"red","bold":true}]
tellraw @a[tag=player,scores={job-spy=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Spy [스파이]\n","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"스파이\"","color":"red"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤/낮으로 다른 사람들의 의심을 피해 시민 세력을 줄이십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"저녁에 마피아처럼 보이는 사람에게 스파이 전용아이템을 우클릭하세요.\n","color":"none"},{"text":"Tip! 마피아를 찾기 전까지는 시민 세력에 포함됩니다. 빠른 시일 내에 마피아를 찾아 마피아 세력에 합류할수록 이길 확률이 높아집니다.\n","color":"gray"}]

title @a[tag=player,scores={job-detective=1}] title ["",{"text":"Detective","color":"dark_gray","bold":true}]
tellraw @a[tag=player,scores={job-detective=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Detective [탐정]\n","color":"dark_gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"탐정\"","color":"dark_gray"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 다른 사람들을 조사하여 얻은 정보로 마피아를 추리해 내십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"밤에 의심되는 사람에게 전용아이템을 우클릭하세요. 낮이 되면 그 사람이 능력을 누구에게 사용했는지, 언제 사용했는지가 공개됩니다.\n","color":"none"},{"text":"Tip! 조사를 통해 마피아 뿐만아니라 능력을 가진 모든 사람의 정보를 얻게 됩니다. 추리력이 좋다면 게임 전체의 방향을 이끌 수도 있는 직업입니다.\n","color":"gray"}]

title @a[tag=player,scores={job-robber=1}] title ["",{"text":"Robber","color":"black","bold":true}]
tellraw @a[tag=player,scores={job-robber=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Robber [도둑]\n","color":"black","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"도둑\"","color":"black"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"밤에 다른 사람의 능력을 빼앗을 수 있습니다."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"밤에 원하는 능력을 가진 사람에게 전용아이템을 우클릭하세요. 그 즉시 그 사람의 능력을 갖게 되며 능력을 빼앗긴 사람은 일반 시민이 됩니다.\n","color":"none"},{"text":"Tip! 마피아의 능력 또한 빼앗을 수 있습니다. 특정 직업을 가진 사람보다 그 직업에 능숙하다면 게임을 유리하게 만들 수도 있습니다. 일반 시민의 직업을 빼앗거나 또 다른 도둑의 직업을 훔친다면 당신도 일반 시민이 되므로 주의하세요.\n","color":"gray"}]

title @a[tag=player,scores={job-drugaddict=1}] title ["",{"text":"Drugaddict","color":"purple","bold":true}]
tellraw @a[tag=player,scores={job-drugaddict=1}] ["",{"text":"\n선택된 능력의 정보\n\n","color":"gold","bold":true},{"text":"Drugaddict [마약중독자]\n","color":"purple","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"당신의 직업은 "},{"text":"\"마약중독자\"","color":"purple"},{"text":"입니다."}]}}},{"text":"세력분류 : ","color":"gold","bold":false},{"text":" 시민 세력\n","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"가진 약물들을 활용해 밤을 생존해내십시오."}]}}},{"text":"능력 사용방법 : ","color":"gold"},{"text":"밤마다 무작위의 약물들을 제공받습니다.(패시브능력) 상황에 알맞게 사용하세요.\n","color":"none"},{"text":"Tip! 회복이나 도주같은 버프 뿐만아니라 실명과 같은 디버프약물 또한 제공받습니다. 현명한 상황판단을 통해 마피아에게 디버프를 걸거나 시민팀에게 버프를 걸어 시민팀의 생존율을 높일 수 있는 직업입니다.\n","color":"gray"}]

title @a subtitle ["",{"text":"is your job.","color":"gray"}]
tellraw @a ["채팅창에 마우스를 올려 추가정보를 볼 수 있습니다."]




















