#> Toggle our setting
execute if score spectators_generate_chunks hnr.settings matches 1 run scoreboard players set spectators_generate_chunks hnr.settings 2
execute if score spectators_generate_chunks hnr.settings matches 0 run scoreboard players set spectators_generate_chunks hnr.settings 1

#> Reset to first option
execute if score spectators_generate_chunks hnr.settings matches 2 run scoreboard players set spectators_generate_chunks hnr.settings 0

function hunters_and_runners:information
