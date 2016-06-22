# modReflexes
Witcher 3 mod for new Aard skill. Includes my modReflexBlast and modWitcherReflex.  
[Nexusmods Page](http://www.nexusmods.com/witcher3/mods/956?)

![Alt Text](https://staticdelivery.nexusmods.com/mods/952/images/956-1-1446666411.png)

[Reflex Blast Demo Reel](https://youtu.be/A3YcyHFbWn4)  
[Witcher Reflex Demo Reel](https://youtu.be/0P2KhI6Vdc4)

# Packing / Building the Mod
You will first need these build tools to completely build this mod.

[Witcher 3 Mod Kit](http://www.nexusmods.com/witcher3/news/12625/?)  
[W3Strings Encoder](http://www.nexusmods.com/witcher3/mods/1055/?)

There are build scripts provided in this repo. You will need to customize the paths inside BuildVariables.cmd to match your own computer's file structure before using them.

Variable | Description
--- | ---
GAMEPATH | path to your Witcher 3 install
WITCHERBASEDIR | path to where you uncooked the Witcher 3 files thru the Mod Kit
MODKITPATH | path to your Mod Kit install
W3STRINGSENCODER | path to W3Strings Encoder

Use the build script relevant to your current task.

Build | Description
--- | ---
[Full Build.bat](../master/Full Build.bat) | Packs the bundles, encodes the w3strings, compiles the scripts. Auto installs to Witcher 3
[W3Strings Build.bat](../master/W3Strings Build.bat) | Only encodes the w3strings
[Script Build.bat](../master/Script Build.bat) | Only copies the scripts

# Usage
modReflexes automatically adds the Reflex Blast skill to your skill tree as you load a save file. Witcher Reflex doesn't need to install anything to your skill tree and will be ready to go right away.  
1. Load any save file  
2. Open your Character page  
3. Add skill points to Reflex Blast  
4. Activate the skill (requires Aard Sweep activated as well)  
5. When in combat, by default, you can expend 2 adrenaline points  

# Changelog
v1.40
- Fixed bug with Reflex Blast preventing slo-mo triggering other sources
- Fixed enable/disable for Reflex Blast
- Added uninstall option for Reflex Blast
- Added new "Aard Explosion Mode" option for choosing the slo-mo effect on the Aard Sweep

v1.30.1
- Added Witcher 3 v1.22 support
- Fixed enable/disable for Witcher Reflex and synced to Witcher Reflex v1.70

v1.30
- Merged in Witcher Reflex v1.60

v1.20.1
- Improved merge compatibility with modAMM

v1.20
- Added option to enable/disable Reflex Blast and/or Witcher Reflex
- Improved Reflex Blast in-game notifications about install/uninstall processes
- Improved Reflex Blast uninstall process. Deprecated modReflexBlastUninstall uninstall technique

v1.10.1
- Renamed to modReflexes
- Combined customization menus to remove clutter.
  (Be sure to delete your old reflexBlast.xml and witcherReflex.xml files)

v1.10
- Merges Witcher Reflex v1.50 and Reflex Blast v1.07

v1.00
- Initial release
- Merges Witcher Reflex v1.40 and Reflex Blast v1.06
