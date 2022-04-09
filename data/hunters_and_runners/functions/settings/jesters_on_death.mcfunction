#> Toggle our setting
execute if score jesters_on_death hnr.settings matches 1 run scoreboard players set jesters_on_death hnr.settings 2
execute if score jesters_on_death hnr.settings matches 0 run scoreboard players set jesters_on_death hnr.settings 1

#> Reset to first option
execute if score jesters_on_death hnr.settings matches 2 run scoreboard players set jesters_on_death hnr.settings 0

function hunters_and_runners:information