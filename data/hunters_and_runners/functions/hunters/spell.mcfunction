#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.spell.list 0

#> Spacing
tellraw @s [" "]
tellraw @s [" "]

##> Spell cooldown reset for hunters 
tellraw @s[team=hunters] ["",{"text":"Sum Ting Wong? "},{"text":"[Click here to reset your spell cooldown]","color":"red","clickEvent":{"action":"run_command","value":"/trigger hnr.spellreset"},"hoverEvent":{"action":"show_text","contents":{"text":"If your cooldown is a negative or a very high number or is not counting down, click to reset"}}}]

#> Show Spell Title
tellraw @s [{"text":"===== Cast a Spell =====","color":"gold"}]

#> Show Spell Menu for Hunters
execute if entity @s[team=hunters] run tellraw @s [{"text":"[Regeneration]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 1"},"hoverEvent":{"action":"show_text","value":{"text":"Regenerate Hunters health for 30s"}}},{"text":"              ","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":""}},{"text":"[Resistance]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 2"},"hoverEvent":{"action":"show_text","value":{"text":"Decreases Hunters damage intake for 30s"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"                   "},{"text":"[Strength]","color":"red","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 3"},"hoverEvent":{"action":"show_text","value":{"text":"Increases Hunters attack strength for 30s"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"[Blindness]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 4"},"hoverEvent":{"action":"show_text","value":{"text":"Blinds Runners and Spectators for 30s"}}},{"text":"                  ","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":""}},{"text":"[Hunter's Axe]","color":"green","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 5"},"hoverEvent":{"action":"show_text","value":{"text":"Gives you an OP axe with low durability"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"              "},{"text":"[Hunter's Bow]","color":"green","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 6"},"hoverEvent":{"action":"show_text","value":{"text":"Gives you an OP bow with low durability"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"[Glowing]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 7"},"hoverEvent":{"action":"show_text","value":{"text":"Makes all players glow for 30s. Runners won't be notified."}}},{"text":"                     ","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":""}},{"text":"[Paralysis]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 8"},"hoverEvent":{"action":"show_text","value":{"text":"Stuns all non-hunters for 10s"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"         "},{"text":"[Show Hunter Names]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 9"},"hoverEvent":{"action":"show_text","value":{"text":"Shows hunter names on screen to all hunters"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"[Mining Fatigue]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 10"},"hoverEvent":{"action":"show_text","value":{"text":"Makes all runners mine slower - just like an Elder Guardian!"}}},{"text":"                ","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":""}},{"text":"[Nausea]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 11"},"hoverEvent":{"action":"show_text","value":{"text":"Makes all players feel nauseous"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"                   "},{"text":"[Haste]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 12"},"hoverEvent":{"action":"show_text","value":{"text":"All hunters break blocks faster"}}}]
execute if entity @s[team=hunters] run tellraw @s [{"text":"[Night Vision]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger hnr.spell.cast set 13"},"hoverEvent":{"action":"show_text","value":{"text":"Gives all hunters night vision"}}}]

#> Show Dummy Menu for Runners
tellraw @s[team=!hunters] ["",{"text":"You cannot cast a spell as you are not a hunter","color":"red","bold":"true"}]

#> Show Spell Footer
tellraw @s [{"text":"=====================","color":"gold"}]

#> Show hunters how much time left till they can cast a spell
execute if score @s hnr.spell.cool matches 1.. run tellraw @s ["",{"text":"You can cast a spell in: "},{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},{"text":" seconds","bold":true}]
execute if score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"You can cast a spell!","bold":true,"color":"green"}]
execute if score @s hnr.spell.cool matches ..-1 run tellraw @s ["",{"text":"Please stop the game! Error found in spell cooldown: "},{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},{"text":" seconds","bold":true}]