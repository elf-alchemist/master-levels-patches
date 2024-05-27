# Master Levels Patches

Scripts and VCDIFF files built to improve the Master Levels for Doom II.

Run the following to build a `master.tar` file and apply VCDIFFs to patch the Master Levels for Doom II.

```bash
$ ./master.sh
```

This command builds the following files:

- `masterpack.wad`
  - The base version of the Masterpack for Doom II, 
- `masterpack-freedoom.wad`
	- A modified version of the base, same maps, rebuilt nodes
  - Adds in freedoom assets on top of the base map set, rendering them a completely new look and feel
	- Taken from version 0.13.0 of the incredible free asset project [Freedoom](https://github.com/freedoom/freedoom)
- `masterpack-psx.wad`
	- A modified version of the base, same maps, rebuilt nodes
	- Adds in graphical and sound assets from the awesome [VanillaPSX](https://www.doomworld.com/vb/thread/144075) by [DRON12261](https://github.com/dron12261games)
	- Soundtrack uses the [PSX Doom](https://aubreyhodges.bandcamp.com/album/doom-playstation-official-soundtrack-20th-anniversary-extended-edition) and [PSX Final Doom](https://aubreyhodges.bandcamp.com/album/final-doom-playstation-official-soundtrack-20th-anniversary-extended-edition) OSTs, with the blessing of Aubrey Hodges, please check out his amazing work on his [Bandcamp](https://aubreyhodges.bandcamp.com/)
