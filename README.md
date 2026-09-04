# Dolphin Geek Configuration

Personal Dolphin + Qt6 configuration for the `geek` Hyprland setup.

## What is included

```text
dolphin/
└── dolphinrc

qt6ct/
└── qt6ct.conf

packages.txt
install.sh
```

The backup contains the settings captured from the working setup, including Dolphin UI settings and the Qt6ct appearance/interface configuration.

## Requirements

This repository is currently prepared for **Arch Linux / CachyOS**.

Required packages:

| Package | Purpose |
|---|---|
| `dolphin` | KDE Dolphin file manager |
| `qt6ct` | Qt6 appearance and application configuration |
| `kvantum` | Qt6 style engine used by this setup |
| `papirus-icon-theme` | Provides the `Papirus-Dark` icon theme |
| `ttf-space-mono-nerd` | Space Mono Nerd Font used by qt6ct |
| `ttf-jetbrains-mono-nerd` | JetBrains Mono Nerd Font used by qt6ct |

The current package names are available in the Arch/CachyOS repositories. `qt6ct` provides the `darker.conf` color scheme referenced by the saved configuration, while Kvantum is the selected Qt style. citeturn118136search4turn118136search5turn118136search1 The Papirus icon package provides the Papirus theme, and the two Nerd Font packages provide the fonts referenced by `qt6ct.conf`. citeturn118136search9turn118136search3turn118136search0

`Dolphin` also needs to be run with an appropriate Qt platform/theme environment outside KDE Plasma; ArchWiki documents `qt6ct` as a way to configure Dolphin's Qt appearance and notes that Dolphin can be started with the `qt6ct` platform theme when needed. citeturn118136search2

## Quick install — Arch / CachyOS

Clone the repository and run the installer:

```bash
git clone https://github.com/ilhamfirmansyahhub/configs-dolphin-geek.git
cd configs-dolphin-geek
chmod +x install.sh
./install.sh
```

The installer automatically installs the required packages with `pacman`, then:

1. Creates the required `~/.config` directory.
2. Backs up an existing `dolphinrc` or `qt6ct.conf` with a timestamp.
3. Installs the repository versions into the correct locations.
4. Uses `sudo` only for package installation; user configuration is written to your own home directory.
5. Leaves the existing system-wide configuration untouched.

Restart Dolphin after installation.

## Manual package installation

You can install the dependencies without the script:

```bash
sudo pacman -S --needed dolphin qt6ct kvantum papirus-icon-theme ttf-space-mono-nerd ttf-jetbrains-mono-nerd
```

The same package list is also stored in `packages.txt`.

## Other distributions

The configuration files are portable, but package names and Qt integration differ between distributions. On non-Arch systems, install the equivalents of the six packages above and then run `install.sh`; the script will not attempt to use `pacman` when it is unavailable.

## Restore without cloning

Download or extract the repository, enter the directory, and run:

```bash
./install.sh
```

## Notes

`qt6ct.conf` contains a Qt6ct window geometry entry that is machine/session-specific. It is harmless to restore, but Qt6ct may rewrite that entry when the configuration window is moved or resized.

The saved configuration selects:

- Dolphin menu bar disabled
- Dolphin color scheme `KvCurves`
- Qt6ct color scheme `darker.conf`
- Qt6ct style `kvantum`
- `Papirus-Dark` icon theme
- Space Mono Nerd Font for fixed-width text
- JetBrains Mono Nerd Font Mono for general text

This repository intentionally stores user configuration only. No passwords, tokens, or other secrets should be placed here.

## Author

[Ilham Firmansyah](https://github.com/ilhamfirmansyahhub)
