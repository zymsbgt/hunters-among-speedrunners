#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spellreset 0

schedule clear hunters_and_runners:hunters/spells/reduce_cooldown

execute if score hunter_sabotage hnr.settings matches 0 run scoreboard players set @s[team=hunters] hnr.spell.cool 300
execute if score hunter_sabotage hnr.settings matches 1 run scoreboard players set @s[team=hunters] hnr.spell.cool 600
execute if score hunter_sabotage hnr.settings matches 2 run scoreboard players set @s[team=hunters] hnr.spell.cool 900
execute if score hunter_sabotage hnr.settings matches 3 run scoreboard players set @s[team=hunters] hnr.spell.cool 1800
execute if score hunter_sabotage hnr.settings matches 4 run scoreboard players set @s[team=hunters] hnr.spell.cool 2700
schedule function hunters_and_runners:hunters/spells/reduce_cooldown 1s
tellraw @s {"text":"Spell cooldown has been reset. If the issue persists, please contact an admin","color":"red","clickEvent":{"action":"open_url","value":"http://discord.zymsb.mywire.org/"},"hoverEvent":{"action":"show_text","contents":{"text":"If your admin can't resolve the issue, please report this bug on the developer's Discord server: http://discord.zymsb.mywire.org/   (Click to Open)"}}}