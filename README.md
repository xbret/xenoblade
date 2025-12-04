Xenoblade
[![Build Status]][actions] ![code-progress-jp] ![data-progress-jp] ![code-progress-eu] ![data-progress-eu] [![Discord Badge]][discord]
=============

[Build Status]: https://github.com/xbret/xenoblade/actions/workflows/build.yml/badge.svg
[actions]: https://github.com/xbret/xenoblade/actions/workflows/build.yml

[code-progress-jp]: https://decomp.dev/xbret/xenoblade.svg?mode=shield&measure=complete_code&label=Code%20(JP)
[data-progress-jp]: https://decomp.dev/xbret/xenoblade.svg?mode=shield&measure=complete_data&label=Data%20(JP)
[code-progress-eu]: https://decomp.dev/xbret/xenoblade/eu.svg?mode=shield&measure=complete_code&label=Code%20(EU/US)
[data-progress-eu]: https://decomp.dev/xbret/xenoblade/eu.svg?mode=shield&measure=complete_data&label=Data%20(EU/US)

<!--
Replace with your Discord server's ID and invite URL.
-->
[Discord Badge]: https://img.shields.io/discord/727908905392275526?color=%237289DA&logo=discord&logoColor=%23FFFFFF
[discord]: https://discord.gg/ACfG9PB9Nc

This is a work-in-progress decompilation of Xenoblade.

It builds the following executables:

| Region | SHA1 hash                                  |
|:------:|--------------------------------------------|
| JP     | `a564033aee46988743d8f5e6fdc50a8c65791160` |
| EU     | `10d34dbf901e5d6547718176303a6073ee80dda2` |
| US     | `214b15173fa3bad23a067476d58d3933ad7037b7` |


This repository does **not** contain any game assets or assembly whatsoever. An existing copy of the game is required.

Dependencies
============

Windows
--------

On Windows, it's **highly recommended** to use native tooling. WSL or msys2 are **not** required.
When running under WSL, [objdiff](#diffing) is unable to get filesystem notifications for automatic rebuilds.

- Install [Python](https://www.python.org/downloads/) and add it to `%PATH%`.
  - Also available from the [Windows Store](https://apps.microsoft.com/store/detail/python-311/9NRWMJP3717K).
- Download [ninja](https://github.com/ninja-build/ninja/releases) and add it to `%PATH%`.
  - Quick install via pip: `pip install ninja`

macOS
------

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages):

  ```sh
  brew install ninja
  ```

- Install [wine-crossover](https://github.com/Gcenx/homebrew-wine):

  ```sh
  brew install --cask --no-quarantine gcenx/wine/wine-crossover
  ```

After OS upgrades, if macOS complains about `Wine Crossover.app` being unverified, you can unquarantine it using:

```sh
sudo xattr -rd com.apple.quarantine '/Applications/Wine Crossover.app'
```

Linux
------

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).
- For non-x86(_64) platforms: Install wine from your package manager.
  - For x86(_64), [wibo](https://github.com/decompals/wibo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

Building
========

- Clone the repository:

  ```sh
  git clone https://github.com/my/repo.git
  ```

- Using [Dolphin Emulator](https://dolphin-emu.org/), extract your game to `orig/jp`.
![](assets/dolphin-extract.png)
  - To save space, the only necessary files are the following. Any others can be deleted.
    - `sys/main.dol`
    - `files/rels/*.rel`
- Configure:

  ```sh
  python configure.py
  ```

  To use a version other than `jp`, specify it with `--version`.
- Build:

  ```sh
  ninja
  ```

Visual Studio Code
==================

If desired, use the recommended Visual Studio Code settings by renaming the `.vscode.example` directory to `.vscode`.

Diffing
=======

Once the initial build succeeds, an `objdiff.json` should exist in the project root.

Download the latest release from [encounter/objdiff](https://github.com/encounter/objdiff). Under project settings, set `Project directory`. The configuration should be loaded automatically.

Select an object from the left sidebar to begin diffing. Changes to the project will rebuild automatically: changes to source files, headers, `configure.py`, `splits.txt` or `symbols.txt`.

![](assets/objdiff.png)
