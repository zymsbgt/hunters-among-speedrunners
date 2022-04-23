execute if score environment_kill hnr.settings matches 0 run function hunters_and_runners:jester/death_by_player
execute if score @s hnr.killed_by matches 1 run function hunters_and_runners:jester/death_by_player
title @a subtitle ["",{"selector":"@s"}," has died"]

execute if score give_starter_kit hnr.settings matches 1 run give @s stone_sword
execute if score give_starter_kit hnr.settings matches 1 run give @s stone_axe
execute if score give_starter_kit hnr.settings matches 1 run give @s stone_pickaxe
execute if score give_starter_kit hnr.settings matches 1 run give @s torch 8
execute if score give_starter_kit hnr.settings matches 1 run give @s stick 4
execute if score give_starter_kit hnr.settings matches 1 run give @s bread 4 