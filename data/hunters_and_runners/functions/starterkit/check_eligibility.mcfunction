#> If conditions are not met, tell the player they're not eligible
execute if score give_starter_kit hnr.settings matches 0 run tellraw @s {"text":"Sorry, you are not eligible for a starter kit as starter kits are not allowed in this game","color":"red"}
execute if score give_starter_kit hnr.settings matches 2 run execute if score nether_loaded hnr.settings matches 0 run tellraw @s {"text":"Sorry, you are not eligible for a starter kit as the game is still in early stage","color":"red"}
execute if entity @s[scores={hnr.eligiblekit=0}] run tellraw @s {"text":"Sorry, you are not eligible for a starter kit as you have already claimed one after your last death","color":"red"}
execute if entity @s[team=!] run tellraw @s {"text":"Spectators cannot claim starter kits","color":"red"}

#> If conditions are met, give the player their starter kit
execute if score give_starter_kit hnr.settings matches 1 run execute if entity @s[scores={hnr.eligiblekit=1..},gamemode=!spectator] run function hunters_and_runners:starterkit/player_claim_kit
execute if score give_starter_kit hnr.settings matches 2 run execute if score nether_loaded hnr.settings matches 1 run execute if entity @s[scores={hnr.eligiblekit=1..},gamemode=!spectator] run function hunters_and_runners:starterkit/player_claim_kit

#> Reset the score so that this function does not get called again
scoreboard players set @s hnr.claimkit 0

# I dunno if the line below will cause issues, but I'm just putting this here for now
#scoreboard players set @s hnr.eligiblekit 0