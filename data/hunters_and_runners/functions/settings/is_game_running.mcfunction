#> Toggle our setting
execute if score is_game_running hnr.settings matches 1 run scoreboard players set is_game_running hnr.settings 2
execute if score is_game_running hnr.settings matches 0 run scoreboard players set is_game_running hnr.settings 1

#> Reset to first option
execute if score is_game_running hnr.settings matches 2 run scoreboard players set is_game_running hnr.settings 0

function hunters_and_runners:information