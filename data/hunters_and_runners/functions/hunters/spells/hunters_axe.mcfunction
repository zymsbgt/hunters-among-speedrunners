#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spell.cast 0

#> This spell requires hunter to have casted at least 2 spells this round before they can cast this spell
execute unless score @s hnr.spell.count matches 3.. run tellraw @s {"text":"Spell locked! Cast at least 2 other spells before casting this spell","color":"red"}

#> If spell on cooldown, inform hunter. If not hunter, tell player
execute unless score @s hnr.spell.cool matches 0 run tellraw @s {"text":"Your spell is currently either on cooldown, or you are not a hunter","color":"red"}

#> Cast spell
execute if score @s hnr.spell.cool matches 0 run execute if score @s hnr.spell.count matches 3.. run give @s iron_axe{display:{Name:"\"Hunter's Axe\"",Lore:["\"Reminds runners of their mortality\""]},Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}],Damage:249,RepairCost:500} 1
execute if score @s hnr.spell.cool matches 0 run execute if score @s hnr.spell.count matches 3.. run tellraw @s ["",{"text":"Your axe has been granted","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run execute if score @s hnr.spell.count matches 3.. run playsound ambient.cave master @a[team=!hunters] ~ ~ ~ 50 1
execute if score @s hnr.spell.cool matches 0 run execute if score @s hnr.spell.count matches 3.. run function hunters_and_runners:hunters/spells/set_cooldown