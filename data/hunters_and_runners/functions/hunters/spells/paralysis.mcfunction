#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spell.cast 0

#> If spell on cooldown, inform hunter. If not hunter, tell player
execute unless score @s hnr.spell.cool matches 0 run tellraw @s {"text":"Your spell is currently either on cooldown, or you are not a hunter","color":"aqua"}

#> Cast spell
execute if score @s hnr.spell.cool matches 0 run effect give @a[team=!hunters] minecraft:slowness 15 255 true
execute if score @s hnr.spell.cool matches 0 run effect give @a[team=!hunters] minecraft:jump_boost 15 137 true
execute if score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"Your spell has been casted","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run tellraw @a[team=hunters] ["",{"text":"Your huntermate has casted paralysis upon the runners","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run playsound entity.elder_guardian.curse hostile @a[team=!hunters] ~ ~ ~ 50 1
execute if score @s hnr.spell.cool matches 0 run tellraw @a[team=!hunters] ["",{"text":"The Hunters have casted a spell upon the Runners","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run function hunters_and_runners:hunters/spells/set_cooldown