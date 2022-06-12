#> Toggle our setting
execute if score send_command_feedback hnr.settings matches 1 run scoreboard players set send_command_feedback hnr.settings 2
execute if score send_command_feedback hnr.settings matches 0 run scoreboard players set send_command_feedback hnr.settings 1

#> Reset to first option
execute if score send_command_feedback hnr.settings matches 2 run scoreboard players set send_command_feedback hnr.settings 0

function hunters_and_runners:information
