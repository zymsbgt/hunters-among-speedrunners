#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spell.cast 0

#> If spell on cooldown, inform hunter. If not hunter, tell player
execute unless score @s hnr.spell.cool matches 0 run tellraw @s {"text":"Your spell is currently either on cooldown, or you are not a hunter","color":"aqua"}

#> Cast spell
execute if score @s hnr.spell.cool matches 0 run give @s bow{display:{Name:'{"text":"Hunter\'s Bow"}',Lore:['{"text":"You have one shot. Arrow not included."}']},Enchantments:[{id:"minecraft:power",lvl:5s},{id:"minecraft:punch",lvl:3s},{id:"minecraft:flame",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],Damage:383} 1
execute if score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"Your bow has been granted","color":"aqua"}]
execute if score @s hnr.spell.cool matches 0 run playsound ambient.cave master @a[team=runners] ~ ~ ~ 50 1
execute if score @s hnr.spell.cool matches 0 run function hunters_and_runners:hunters/spells/set_cooldown