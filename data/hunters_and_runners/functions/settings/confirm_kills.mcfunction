#> Toggle our setting
execute if score confirm_kills hnr.settings matches 2 run scoreboard players set confirm_kills hnr.settings 3
execute if score confirm_kills hnr.settings matches 1 run scoreboard players set confirm_kills hnr.settings 2
execute if score confirm_kills hnr.settings matches 0 run scoreboard players set confirm_kills hnr.settings 1

#> Reset to first option
execute if score confirm_kills hnr.settings matches 3 run scoreboard players set confirm_kills hnr.settings 0

function hunters_and_runners:information
