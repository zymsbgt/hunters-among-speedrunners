#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spell.cast 0

#> If spell on cooldown, inform hunter. If not hunter, tell player
execute unless score @s hnr.spell.cool matches 0 run tellraw @s {"text":"Your spell is currently either on cooldown, or you are not a hunter","color":"aqua"}

#> Cast spell
execute if score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"Your spell has been casted","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run title @a[team=hunters] title {"text":" ","bold":true,"color":"aqua"}
execute if score @s hnr.spell.cool matches 0 run title @a[team=hunters] subtitle ["",{"selector":"@a[team=hunters]","color":"aqua"},{"text":" are the hunters","color":"dark_aqua"},{"text":" "}]
execute if score @s hnr.spell.cool matches 0 run playsound ambient.cave master @a[team=runners] ~ ~ ~ 50 1
execute if score @s hnr.spell.cool matches 0 run function hunters_and_runners:hunters/spells/set_cooldown