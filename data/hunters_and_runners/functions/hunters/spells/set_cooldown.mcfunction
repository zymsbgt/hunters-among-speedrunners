scoreboard players add @s hnr.spell.count 1
execute if score hunter_sabotage hnr.settings matches 0 run scoreboard players set @s[team=hunters] hnr.spell.cool 300
execute if score hunter_sabotage hnr.settings matches 1 run scoreboard players set @s[team=hunters] hnr.spell.cool 600
execute if score hunter_sabotage hnr.settings matches 2 run scoreboard players set @s[team=hunters] hnr.spell.cool 900
execute if score hunter_sabotage hnr.settings matches 3 run scoreboard players set @s[team=hunters] hnr.spell.cool 1800
execute if score hunter_sabotage hnr.settings matches 4 run scoreboard players set @s[team=hunters] hnr.spell.cool 2700
playsound minecraft:block.note_block.pling master @a[team=hunters] ~ ~ ~ 50 1
give @a[gamemode=survival,sort=random,limit=2] firework_rocket{display:{Name:"\"Proximity Signal Flare\"",Lore:["\"Launch it to get attention from nearby players. Use wisely!\""]},Fireworks:{Flight:3,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;14602026]}]}} 1
give @r[gamemode=survival] minecraft:player_head{gravesKey:1b,display:{Name:'["",{"text":"Grave Key","italic":false,"color":"yellow"}]',Lore:['{"text":"Right-click a grave while holding exactly one of this to forcibly open it.","color":"gray","italic":false}','{"text":"Placing this down will break its functionality.","color":"gray","italic":false}']},SkullOwner:{Id:[I;0,0,0,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWVjNzA3NjllMzYzN2E3ZWRiNTcwMmJjYzQzM2NjMjQyYzJmMjIzNWNiNzNiOTQwODBmYjVmYWZmNDdiNzU0ZSJ9fX0="}]}}} 1