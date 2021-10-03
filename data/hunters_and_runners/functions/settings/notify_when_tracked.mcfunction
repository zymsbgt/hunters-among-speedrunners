#> Toggle our setting
execute if score notify_when_tracked hnr.settings matches 1 run scoreboard players set notify_when_tracked hnr.settings 2
execute if score notify_when_tracked hnr.settings matches 0 run scoreboard players set notify_when_tracked hnr.settings 1

#> Reset to first option
execute if score notify_when_tracked hnr.settings matches 2 run scoreboard players set notify_when_tracked hnr.settings 0

function hunters_and_runners:information