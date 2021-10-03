#> Toggle our setting
execute if score hunter_sabotage hnr.settings matches 4 run scoreboard players set hunter_sabotage hnr.settings 5
execute if score hunter_sabotage hnr.settings matches 3 run scoreboard players set hunter_sabotage hnr.settings 4
execute if score hunter_sabotage hnr.settings matches 2 run scoreboard players set hunter_sabotage hnr.settings 3
execute if score hunter_sabotage hnr.settings matches 1 run scoreboard players set hunter_sabotage hnr.settings 2
execute if score hunter_sabotage hnr.settings matches 0 run scoreboard players set hunter_sabotage hnr.settings 1

#> Reset to first option
execute if score hunter_sabotage hnr.settings matches 5 run scoreboard players set hunter_sabotage hnr.settings 0

function hunters_and_runners:information
