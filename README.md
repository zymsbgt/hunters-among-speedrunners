# Hunters Among Speedrunners

Minecraft minigame datapack based on speedrunning and deception. <br/>
For setup instructions, visit https://docs.google.com/document/d/1kOOY_4Y6hiFj-rFSk3dRmzn4dvPnB_-x7hS3OopZyJQ/edit?usp=sharing <br/>
Goes well with the Grave datapack by VanillaTweaks. Get it here: https://vanillatweaks.net/picker/datapacks/ <br/>
Only tested on Paper v1.16.5 (build 567). Get it here: https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/567/downloads/paper-1.16.5-567.jar

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
<br/>![hnr.information](https://i.imgur.com/AL1j4Bx.png)

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

### Runners:
Defeat the Ender Dragon without getting killed!

### Jesters (enable by typing `/trigger hnr.information`):
Get killed by another player to win!

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