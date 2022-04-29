execute if score give_starter_kit hnr.settings matches 1 run give @s stone_sword
execute if score give_starter_kit hnr.settings matches 1 run give @s stone_axe
execute if score give_starter_kit hnr.settings matches 1 run give @s stone_pickaxe
execute if score give_starter_kit hnr.settings matches 1 run give @s torch 8
execute if score give_starter_kit hnr.settings matches 1 run give @s stick 4
execute if score give_starter_kit hnr.settings matches 1 run give @s bread 4

#> Reset the score so that this function does not get called again
scoreboard players set @s hnr.eligiblekit 0