# PMD-Super-Cutsceneless-Hack
A Hack of Pokémon Super Mystery Dungeon (US version) that removes Speedrun-mandatory cutscenes while keeping gameplay as intact as possible.

The main Any% portion + the post-game plotline (up to Purifying cave) is finished.

---
This hack has been made by editing the Lua scripts that the game uses to control cutscenes. Additionally, the `script_flow_data_us.bin` file has been edited to change the order in which scripts get executed (resulting in faster loading times over just emptying the scripts' content but still letting them load). The repo contains the edited source, while the releases section contains the compiled Luas (though technically the game can read uncompiled scripts as well). You can use this either on a homebrewed 3DS with Luma, or on Citra.

To install:

- Grab the hack from the releases section. You should have a single "luma" folder containing all the modifications.

Then: 

For 3DS:
- Drag that luma folder right into the root of the SD card.
- Inside luma/titles, you can delete the folder for the version of the game you don't want install if you wish. "0004000000174600" is the folder for the US version, while "0004000000174400" is the folder for the EU version.
- Additionally, make sure game patching is enabled on the Luma3DS menu (hold select while powering on the 3DS)

For Citra:
- Make sure you have Super Mystery Dungeon added to your games list. Then right click on the game, select "Open Mods Location" and you should be inside a folder called "0004000000174600" (for the US version) or "0004000000174400" (for the EU version). Onto here you should drag the "romfs" folder from the appropriate region of the hack (it is inside luma/titles/0004000000174600 for the US version. or inside luma/titles/0004000000174400 for the EU version).
---
Credit to SkyEditor and its authors for allowing the extraction and recompilation of the game's Lua scripts, as well as to .Net 3DS Toolkit for providing a solution to unpack and re-pack a 3DS ROM into a modified one.
