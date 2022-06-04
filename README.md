# Hunters Among Speedrunners

Minecraft minigame datapack based on speedrunning and deception. <br/>
For setup instructions, visit https://docs.google.com/document/d/1kOOY_4Y6hiFj-rFSk3dRmzn4dvPnB_-x7hS3OopZyJQ/edit?usp=sharing <br/>
Goes well with the Grave datapack by VanillaTweaks. Get it here: https://vanillatweaks.net/picker/datapacks/ <br/>
Only tested on Paper v1.16.5 (build 567). Get it here: https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/567/downloads/paper-1.16.5-567.jar <br/>
I recommend using this modpack specially designed for this datapack, courtesy of Darkblade! https://www.curseforge.com/minecraft/modpacks/has-client-pack <br/>
Modpack source code here: https://github.com/IntoTheVoid-900/hunters-amoung-speedrunners-client-pack
Do note that the modpack is optional, but I would highly recommend it as it has performance and visual enhancements as well as built in proximity voice chat. <br/>
This minigame requires a proximity voice chat mod such as Plasmo voice. It is included in the recommended modpack for your convenience.

## Download:
For stable builds, check the Releases on this repo. <br/>
For cutting-edge builds, simply download this repo as a .zip and place it inside your world's datapacks folder.

## Information:
The closest Runner to the Hunter will be tracked by default.
Drop your compass to view a list of runners to track.
Multiple Hunters and Runners are supported.
Runners can be tracked in the Overworld, Nether and End dimensions.

## Usage:

View settings/select a team:
```
/trigger hnr.information
```
<br/>

View game stats:
```
/trigger hnr.stats
```

### Hunters:
Drop your compass to see a list of Runners to track.
<br/>![list example](https://i.imgur.com/yKMuKxI.png)

View spell list:
```
/trigger hnr.spell.list
```

### Jesters (enable by typing `/trigger hnr.information`):
We're currently reworking on Jesters to hopefully make the game more chaotic and fun!

## Settings:
_Can only be changed by ops_

Show Runner last position
- When enabled, the compass will show the last position the runner was located before changing dimensions.
- When disabled, the compass will show as if there is no target when the runner changes dimensions.

Rename compass to match Runner:
- When enabled, the compass will have the same name as the Runner currently being tracked.
- When disabled, the compass will be called `Tracking Compass`.

On Runners death:
- Do nothing, The Runner will be able to respawn as normal, nothing will change.
- Become Spectator, The Runner will be changed to spectator gamemode.
- Become Hunter, The Runner will be move to the Hunters team.

(to be continued)

# Looking for a Minecraft server to play this minigame on?
Our server hosting provider GeyserHost is willing to give anyone who wants to play this minigame a free Minecraft server for as long as the game lasts. 
Join their Discord server here: https://discord.gg/gwtQqFjDYp

## Credits:
This datapack was forked from https://github.com/RedSparr0w/hunters_and_runners
