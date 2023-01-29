# PMD-Super-Cutsceneless-Hack
A Hack of Pokémon Super Mystery Dungeon (US version) that removes Speedrun-mandatory cutscenes while keeping gameplay as intact as possible.

The main Any% portion + the post-game plotline (up to Purifying cave) is finished.

---
This hack has been made by editing the Lua scripts that the game uses to control cutscenes. Additionally, the `script_flow_data_us.bin` file has been edited to change the order in which scripts get executed (resulting in faster loading times over just emptying the scripts' content but still letting them load). The repo contains the edited source, while the releases section contains the compiled Luas (though technically the game can read uncompiled scripts as well). You can use this either on a homebrewed 3DS with Luma, or on Citra.

To install:

If on a homebrewed 3DS, you can grab luma.zip and install the hack as a Luma LayeredFS patch.
- Drag the Luma folder inside luma.zip right into the root of the SD card.
- Additionally, make sure game patching is enabled on the Luma3DS menu (hold select while powering on the 3DS)

If on Citra, things are a little more complicated.
While Citra normally supports Luma LayeredFS patches just like a homebrewed 3DS would... in this case, at the time of writing there appears to be a bug with Citra that prevents this patch from being loaded. It seems like Citra refuses to load patches that are too big in file size.
Instead, the option I'm providing for now is a way to unpack a decrypted 3DS ROM of your own, and re-build it into a cutsceneless ROM.
You will need a decrypted (.3ds) 3DS ROM for this. You will also need around 4 GB of free space for this process (though the final ROM will be around 2GB)
- Download Build_PSMD_Cutsceneless.zip
- Navigate where the Build.bat script is, and open a terminal. You can open a terminal in several ways, for example by holding Shift+Left Click inside the folder and opening a Powershell/Command Prompt window,
- Once you have the terminal open, type: `build.bat {filepath}` where `{filepath}` is the path to your decrypted 3DS ROM.
- You will probably get a few error messages during the build process, feel free to ignore these, as long as everything eventually gets built.
- By the end of this, you should end up with a file called PSMD_Cutsceneless_(v1.0).3DS, which you can add on Citra.
---
Credit to SkyEditor and its authors for allowing the extraction and recompilation of the game's Lua scripts, as well as to .Net 3DS Toolkit for providing a solution to unpack and re-pack a 3DS ROM into a modified one.
