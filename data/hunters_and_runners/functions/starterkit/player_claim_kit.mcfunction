execute if score end_loaded hnr.settings matches 0 run give @s stone_sword
execute if score end_loaded hnr.settings matches 0 run give @s stone_axe
execute if score end_loaded hnr.settings matches 0 run give @s stone_pickaxe

execute if score end_loaded hnr.settings matches 1 run give @s iron_sword
execute if score end_loaded hnr.settings matches 1 run give @s iron_axe
execute if score end_loaded hnr.settings matches 1 run give @s iron_pickaxe

give @s torch 8
give @s stick 4
give @s bread 4

#> Reset the score so that this function does not get called again
scoreboard players set @s hnr.eligiblekit 0