#> Toggle our setting
execute if score admin_chooses_teams hnr.settings matches 2 run scoreboard players set admin_chooses_teams hnr.settings 3
execute if score admin_chooses_teams hnr.settings matches 1 run scoreboard players set admin_chooses_teams hnr.settings 2
execute if score admin_chooses_teams hnr.settings matches 0 run scoreboard players set admin_chooses_teams hnr.settings 1

#> Reset to first option
execute if score admin_chooses_teams hnr.settings matches 3 run scoreboard players set admin_chooses_teams hnr.settings 0

function hunters_and_runners:information