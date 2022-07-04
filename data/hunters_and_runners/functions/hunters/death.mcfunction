execute if score environment_kill hnr.settings matches 0 run function hunters_and_runners:hunters/death_by_player
execute if score @s hnr.killed_by matches 1 run function hunters_and_runners:hunters/death_by_player
title @a subtitle ["",{"selector":"@s"}," has died"]

#> Tell dead player they can claim a starter kit
execute if score give_starter_kit hnr.settings matches 1 run tellraw @s ["","You can claim a starter kit! ",{"text":"[Claim now]","color":"green","clickEvent":{"action":"run_command","value":"/trigger hnr.claimkit"},"hoverEvent":{"action":"show_text","contents":["Claim your starter kit!"]}}]
execute if score give_starter_kit hnr.settings matches 2 run execute if score nether_loaded hnr.settings matches 1 run tellraw @s ["","You can claim a starter kit! ",{"text":"[Claim now]","color":"green","clickEvent":{"action":"run_command","value":"/trigger hnr.claimkit"},"hoverEvent":{"action":"show_text","contents":["Claim your starter kit!"]}}]