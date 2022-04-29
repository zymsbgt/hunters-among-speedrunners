#> Toggle our setting
#execute if score set_runners_goal hnr.settings matches 3 run scoreboard players set set_runners_goal hnr.settings 4
execute if score set_runners_goal hnr.settings matches 2 run scoreboard players set set_runners_goal hnr.settings 3
execute if score set_runners_goal hnr.settings matches 1 run scoreboard players set set_runners_goal hnr.settings 2
execute if score set_runners_goal hnr.settings matches 0 run scoreboard players set set_runners_goal hnr.settings 1

#> Reset to first option
execute if score set_runners_goal hnr.settings matches 3 run scoreboard players set set_runners_goal hnr.settings 0

function hunters_and_runners:information