execute if score environment_kill hnr.settings matches 0 run function hunters_and_runners:jester/death_by_player
execute if score @s hnr.killed_by matches 1 run function hunters_and_runners:jester/death_by_player
title @a subtitle ["",{"selector":"@s"}," has died"]