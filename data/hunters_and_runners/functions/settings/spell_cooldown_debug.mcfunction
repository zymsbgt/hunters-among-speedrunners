#> Toggle our setting
execute if score spell_cooldown_debug hnr.settings matches 1 run scoreboard players set spell_cooldown_debug hnr.settings 2
execute if score spell_cooldown_debug hnr.settings matches 0 run scoreboard players set spell_cooldown_debug hnr.settings 1

#> Reset to first option
execute if score spell_cooldown_debug hnr.settings matches 2 run scoreboard players set spell_cooldown_debug hnr.settings 0

function hunters_and_runners:information