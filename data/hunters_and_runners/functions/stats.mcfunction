#> Reset the scoreboard so this isn't run multiple times
scoreboard players set @s hnr.stats 0

#> Spacing
tellraw @s [" "]
tellraw @s [" "]

#>Show statistics information
tellraw @s ["",{"text":"===== Statistics =====","color":"gold","bold":"true"}]

##> Is game currently running?
execute if score is_game_running hnr.settings matches 1 run tellraw @s ["",{"text":"Game currently in progress"}]
execute if score is_game_running hnr.settings matches 0 run tellraw @s ["",{"text":"There is currently no game running"}]

##> If game is running, show how many players are participating
execute if score is_game_running hnr.settings matches 1 run tellraw @s ["",{"text":"Participating players remaining: "},{"selector":"@a[gamemode=survival,team=!]"}]

##> player team
execute if entity @s[team=] run tellraw @s ["",{"text":"You are a spectator"}]
execute if entity @s[team=runners] run tellraw @s ["",{"text":"You are a "},{"text":"Runner","color":"red"}]
execute if entity @s[team=runners] run tellraw @s {"text":"Kill the Ender Dragon or all hunters to win!","color":"red"}
execute if entity @s[team=hunters] run tellraw @s ["",{"text":"You are a "},{"text":"Hunter","color":"aqua"}]
execute if entity @s[team=hunters] run tellraw @s ["",{"text":"The hunters are "},{"selector":"@a[team=hunters]","color":"aqua"}]
execute if entity @s[team=hunters] run tellraw @s {"text":"Defend the Ender Dragon and Kill all runners to win!","color":"aqua"}
execute if entity @s[team=jester] run tellraw @s ["",{"text":"You are "},{"text":"The Jester","color":"light_purple"}]
execute if entity @s[team=jester] run tellraw @s {"text":"Trick other players into killing you to win!","color":"dark_purple"}

##> if player is the healer
execute if score @s hnr.ishealer matches 1 run tellraw @s {"text":"You are also a healer","italic":true}
execute if score @s hnr.ishealer matches 0 run tellraw @s {"text":"You are not a healer","italic":true}
tellraw @s {"text":"Healer is currently experimental, please report bugs if you notice anything wrong!","italic":true,"color":"gray","hoverEvent":{"action":"show_text","contents":{"text":"Please report bugs on GitHub!"}}}

##> their health
execute if entity @s[team=hunters] run tellraw @s ["",{"text":"You have "},{"score":{"name":"@s","objective":"hnr.hunters.hp"},"color":"aqua"},{"text":" health remaining"}]
execute if entity @s[team=runners] run tellraw @s ["",{"text":"You have "},{"score":{"name":"@s","objective":"hnr.runners.hp"},"color":"red"},{"text":" health remaining"}]
execute if entity @s[team=jester] run tellraw @s ["",{"text":"You have "},{"score":{"name":"@s","objective":"hnr.runners.hp"},"color":"light_purple"},{"text":" health remaining"}]
execute if entity @s[team=] run tellraw @s ["",{"text":"You have "},{"score":{"name":"@s","objective":"hnr.runners.hp"},"color":"gray"},{"text":" health remaining"}]

##> If player is hunter, tell them who the compass is pointing towards (to-do)


##> Tell the player their current location
tellraw @s ["",{"text":"Your current location is "},{"score":{"name":"@s","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@s","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@s","objective":"hnr.zpos"},"color":"aqua"}]

##> Retire from game
#tellraw @s ["","Gotta go?",{"text":" [Click here] ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger hnr.retire"}},"to retire from the game"]

##> Spell cooldown for hunters 
execute if entity @s[team=hunters] run execute unless score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"You can cast a spell in: "},{"score":{"name":"@s","objective":"hnr.spell.cool"},"bold":true,"color":"gold"},{"text":" seconds","bold":true}]
execute if entity @s[team=hunters] run execute if score @s hnr.spell.cool matches 0 run tellraw @s ["",{"text":"You can cast a spell!","bold":true,"color":"green"}]
tellraw @s[team=!hunters] ["",{"text":"You cannot cast a spell as you are not a hunter","color":"red","bold":"true"}]
tellraw @s[team=hunters] ["",{"text":"Sum Ting Wong? "},{"text":"[Click here to reset your spell cooldown]","color":"red","clickEvent":{"action":"run_command","value":"/trigger hnr.spellreset"},"hoverEvent":{"action":"show_text","contents":{"text":"If your cooldown is a negative or a very high number or is not counting down, click to reset"}}}]