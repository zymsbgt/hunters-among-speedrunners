#> Toggle our setting
execute if score respect_runner_limit hnr.settings matches 1 run scoreboard players set respect_runner_limit hnr.settings 2
execute if score respect_runner_limit hnr.settings matches 0 run scoreboard players set respect_runner_limit hnr.settings 1

#> Reset to first option
execute if score respect_runner_limit hnr.settings matches 2 run scoreboard players set respect_runner_limit hnr.settings 0

function hunters_and_runners:information
