#> Toggle our setting
execute if score number_of_hunters hnr.settings matches 3 run scoreboard players set number_of_hunters hnr.settings 4
execute if score number_of_hunters hnr.settings matches 2 run scoreboard players set number_of_hunters hnr.settings 3
execute if score number_of_hunters hnr.settings matches 1 run scoreboard players set number_of_hunters hnr.settings 2
execute if score number_of_hunters hnr.settings matches 0 run scoreboard players set number_of_hunters hnr.settings 1

#> Reset to first option
execute if score number_of_hunters hnr.settings matches 4 run scoreboard players set number_of_hunters hnr.settings 1

function hunters_and_runners:information
