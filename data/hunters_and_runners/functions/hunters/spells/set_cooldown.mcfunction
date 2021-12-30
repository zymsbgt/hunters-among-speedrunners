scoreboard players add @s hnr.spell.count 1
execute if score hunter_sabotage hnr.settings matches 0 run scoreboard players set @s[team=hunters] hnr.spell.cool 300
execute if score hunter_sabotage hnr.settings matches 1 run scoreboard players set @s[team=hunters] hnr.spell.cool 600
execute if score hunter_sabotage hnr.settings matches 2 run scoreboard players set @s[team=hunters] hnr.spell.cool 900
execute if score hunter_sabotage hnr.settings matches 3 run scoreboard players set @s[team=hunters] hnr.spell.cool 1800
execute if score hunter_sabotage hnr.settings matches 4 run scoreboard players set @s[team=hunters] hnr.spell.cool 2700
playsound minecraft:block.note_block.pling master @a[team=hunters] ~ ~ ~ 50 1
give @r[gamemode=survival] firework_rocket{display:{Name:"\"Proximity Signal Flare\"",Lore:["\"Launch it to get attention from nearby players. Use wisely!\""]},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;14602026]}]}} 1