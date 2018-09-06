# PussNBootsAutoSplitter

Auto Splitter for Puss 'N Boots: Pero's Great Adventure (NES)

- [LiveSplit](http://livesplit.github.io/) - Here you can find out more about and download LiveSplit. It is a popular timer program typically used for speedruns.
- [ASL](https://github.com/LiveSplit/LiveSplit/blob/master/Documentation/Auto-Splitters.md) - Here you can find more information about ASL (basically C#) and autosplitters in general.

**Supported emulators:**

- FCEUX 2.2.3
- Nestopia 1.40 (Maybe? Untested.)

## Features

- Automatically start the timer when you start a run. Timer starts as the initial map screen loads
- Automatically reset the timer when you restart the game (or load a savestate to before Control Type selection)
- Automatically split after each level at the map screen and at the final victory screen

## Installation

- Go to "Edit Splits.." in LiveSplit
- Enter the name of the game in "Game Name"
  - This must be entered correctly for LiveSplit to know which script to load
- Click the "Activate" button to download and enable the autosplitter script

  - If you ever want to stop using the autosplitter altogether, just click "Deactivate"

## Set-up

- Go to "Edit Splits..." in LiveSplit
- Click "Settings" to configure the autosplitter

  - **Note:** If for some reason LiveSplit does not automatically load the script, click "Browse...", navigate to "\LiveSplit\Components\" and select the appropriate script.

Here you can enable/disable the options for auto start, auto reset, and auto splitting.

## Thanks

This is based heavily on the work of [saturnin55](https://github.com/saturnin55). Thanks!
