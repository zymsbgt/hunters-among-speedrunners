#> Toggle our setting
execute if score players_sleeping_percentage hnr.settings matches 1 run scoreboard players set players_sleeping_percentage hnr.settings 2
execute if score players_sleeping_percentage hnr.settings matches 0 run scoreboard players set players_sleeping_percentage hnr.settings 1

#> Reset to first option
execute if score players_sleeping_percentage hnr.settings matches 2 run scoreboard players set players_sleeping_percentage hnr.settings 0

function hunters_and_runners:information