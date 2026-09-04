# Dolphin Geek Configuration

Personal Dolphin + Qt6 configuration for the `geek` Hyprland setup.

## What is included

```text
dolphin/
└── dolphinrc

qt6ct/
└── qt6ct.conf

install.sh
```

The backup contains the settings captured from the working setup, including Dolphin UI settings and the Qt6ct appearance/interface configuration.

## Quick install

Clone the repository and run the installer:

```bash
git clone https://github.com/ilhamfirmansyahhub/configs-dolphin-geek.git
cd configs-dolphin-geek
chmod +x install.sh
./install.sh
```

The installer:

1. Creates the required `~/.config` directories.
2. Backs up an existing `dolphinrc` or `qt6ct.conf` with a timestamp.
3. Installs the repository versions into the correct locations.
4. Does not use `sudo` and does not modify system-wide configuration.

Restart Dolphin after installation.

## Dependencies

The configuration files themselves do not install packages. For the appearance to match the backup, install the applications/themes used by this setup on your distribution, such as Dolphin, Qt6ct, Kvantum, and Papirus-Dark. Package names can vary between distributions.

The saved `qt6ct.conf` also references these fonts:

- JetBrainsMono Nerd Font Mono
- SpaceMono Nerd Font

Install those fonts separately when needed.

## Restore without cloning

You can also download the repository and run:

```bash
./install.sh
```

from the extracted repository directory.

## Notes

`qt6ct.conf` contains a Qt6ct window geometry entry that is machine/session-specific. It is harmless to restore, but Qt6ct may rewrite that entry when the configuration window is moved or resized.

This repository intentionally stores user configuration only. No passwords, tokens, or other secrets should be placed here.

## Author

[Ilham Firmansyah](https://github.com/ilhamfirmansyahhub)
