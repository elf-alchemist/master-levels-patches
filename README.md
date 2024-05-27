# Master Levels Patches

Scripts and VCDIFF files built to improve the Master Levels for Doom II.

# Prerequisites

* `bash`
* `tar`
* `xdelta3`

# Intructions

Drop in all 20 Master Levels WAD from your steam install, onto the `source/` directory.

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
  - Taken from version 0.13.0 of [Freedoom](https://github.com/freedoom/freedoom)
- `masterpack-psx.wad`
  - A modified version of the base, same maps, rebuilt nodes
  - Adds in graphical and sound assets from the awesome VanillaPSX by [DRON12261](https://github.com/dron12261games)
  - Soundtrack uses the PSX Doom and PSX Final Doom OSTs, with the blessing of Aubrey Hodges, please check out his amazing work on his S[Bandcamp](https://aubreyhodges.bandcamp.com/)
