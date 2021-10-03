#> This function is activated by start.mcfunction

execute as @a[team=hunters] run execute if score @s hnr.spell.cool matches 1.. run scoreboard players remove @s hnr.spell.cool 1

#> Run this function again
schedule function hunters_and_runners:hunters/spells/reduce_cooldown 1s