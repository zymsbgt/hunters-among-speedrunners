#> Toggle our setting
execute if score enable_team_colors hnr.settings matches 1 run scoreboard players set enable_team_colors hnr.settings 2
execute if score enable_team_colors hnr.settings matches 0 run scoreboard players set enable_team_colors hnr.settings 1

#> Reset to first option
execute if score enable_team_colors hnr.settings matches 2 run scoreboard players set enable_team_colors hnr.settings 0

function hunters_and_runners:information