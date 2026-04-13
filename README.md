# modReflexes
Become the ultimate speeded Witcher. Like the [Afro Samurai](https://github.com/cvax/modReflexes/wiki#design-philosophy), like [Dio](https://github.com/cvax/modReflexes/wiki#design-philosophy).

![Alt Text](https://staticdelivery.nexusmods.com/mods/952/images/956-1-1446666411.png)

[Reflex Blast Demo Reel](https://youtu.be/A3YcyHFbWn4)  
[Witcher Reflex Demo Reel](https://youtu.be/0P2KhI6Vdc4)  
[nexusmods Page](http://www.nexusmods.com/witcher3/mods/956?)

### Features

- On-the-fly, in-game customizations to tweak skill level to your own liking
- Enable / disable toggles to turn features you like on / off
- Utilizes the Custom Skills Framework ([NexusMods](http://www.nexusmods.com/witcher3/mods/1758/?) / [GitHub](https://github.com/cvax/modCustomSkillsFramework))

##### Reflex Blast

- New skill creates a slow/freeze time bomb when Geralt releases an Aard Sweep
- Boosts Geralt's fighting speed (fast & strong attacks, dodge, and roll) throughout the duration of the time bomb
- Customizable DPS during Reflex Blast

##### Witcher Reflex

- Tie Geralt's fighting speeds to his training in various skills (e.g. Muscle Memory for Fast Attacks)
- Or universally increase Geralt's fighting speed
- Whirl skill supported
- Ciri supported




## Quick Start

modReflexes automatically adds the Reflex Blast skill to your skill tree as you load a save file. Witcher Reflex doesn't need to install anything to your skill tree and will be ready to go right away.  

1. Requires ```modCustomSkillsFramework```. Download [here](http://www.nexusmods.com/witcher3/mods/1758/?) and copy to ```<Witcher3 install>\Mods```
2. Extract ```modReflexes v1.60.7z``` to ```<Witcher3 Install>```
    a. `modReflexes` will be in `Witcher3 Install>\Mods`
    b. `dlcreflexes` wil be in `<Witcher3 Install>\DLC`
    c. `reflexes.xml` will be in `<Witcher 3 Install>\bin\config\r4game\user_config_matrix\pc`
3. Add the Mod to the ingame menus, add `reflexes.xml;` as a new line to the end of the following:
    a. `<Witcher 3 Install>\bin\config\r4game\user_config_matrix\pc\dx11filelist.txt`
    b. `<Witcher 3 Install>\bin\config\r4game\user_config_matrix\pc\dx12filelist.txt`
4. Use Script Merger to merge with `modCustomSkillsFramework` and others
5. BACKUP ALL OF YOUR GAME SAVES from `<Documents>\The Witcher 3\gamesaves`
6. Launch Witcher 3
7. In the ingame menu, navigate to `Mods > Reflexes > Reflex Blast` and set it to be Enabled
8. Load any save file, the skill will be installed and available in your skill tree now
9. Open your ```Character``` page  
10. Add skill points to ```Reflex Blast```  
11. Activate the skill (requires the ```Aard Sweep``` to be activated as well)  
12. When in combat, by default, you can expend 2 adrenaline points to use in Aard alternate cast

## Uninstall
1. Launch Witcher 3, but don't load into any save yet.
2. From ingame menu, `Mods > Reflexes > Reflex Blast`, set `---=== ENABLE ===---` to `Uninstall`
3. Load your save, the `Reflex Blast` skill will be removed from your skill tree and any skill points used in it will be refunded
4. Save your game to store the restored skill tree
5. Shutdown Witcher 3
6. Delete the mod files:
    a. `<Witcher3 Install>\Mods\modReflexes`
    b. `<Witcher3 Install>\DLC\dlcreflexes`
    c. `<Witcher3 Install>\bin\config\r4game\user_config_matrix\pc\reflexes.xml`
    d. Remove `reflexes.xml;` line from `dx11filelist.txt` and `dx12filelist.txt` located at `<Witcher3 Install>\bin\config\r4game\user_config_matrix\pc
7. Use Script Merger to clean it from any previously merged scripts

PRO TIP: If you have trouble with a save that previously had the skill installed, but you no longer have Reflexes installed, you can fix this by have modCustomSkillFramework repair the skill tree.
1. Open debug console
2. Type `fixcustomskills`
3. Skill tree restored in Character menu without Reflex Blast
4. Save over your previous save


## Roadmap

Please help drive the direction of this mod by voting and commenting over on the [Trello](https://trello.com/b/PTzbfb1s/modreflexes#) board where the roadmap for this mod is outlined.



## Wiki

See the [Wiki](https://github.com/cvax/modReflexes/wiki) for more in-depth usage and [configuration](https://github.com/cvax/modReflexes/wiki/Preset-Options) information as well as [developer resources](https://github.com/cvax/modReflexes/wiki/Developer-Resources).
