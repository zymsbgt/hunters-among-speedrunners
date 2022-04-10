#> Run this command so that it doesn't get repeated again
scoreboard players set @s[scores={hnr.usedflare=1..}] hnr.usedflare 0

#> Announced that player has launched signal flare
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run tellraw @a[nbt={Dimension:"minecraft:overworld"}] ["",{"text":"A signal flare has been launched at "},{"score":{"name":"@s","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@s","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@s","objective":"hnr.zpos"},"color":"aqua"},{"text":" in "},{"text":"The Overworld!","bold":true,"color":"green"}]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run tellraw @a[nbt={Dimension:"minecraft:the_nether"}] ["",{"text":"A signal flare has been launched at "},{"score":{"name":"@s","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@s","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@s","objective":"hnr.zpos"},"color":"aqua"},{"text":" in "},{"text":"The Nether!","bold":true,"color":"red"}]
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run tellraw @a[nbt={Dimension:"minecraft:the_end"}] ["",{"text":"A signal flare has been launched at "},{"score":{"name":"@s","objective":"hnr.xpos"},"color":"red"},{"text":", "},{"score":{"name":"@s","objective":"hnr.ypos"},"color":"green"},{"text":", "},{"score":{"name":"@s","objective":"hnr.zpos"},"color":"aqua"},{"text":" in "},{"text":"The End!","bold":true,"color":"aqua"}]

#> Advise the player launching the server to conserve fireworks
tellraw @s {"text":"Tip: You might want to conserve on using flares, they could come in useful in sticky situations","italic":true,"color":"gray"}