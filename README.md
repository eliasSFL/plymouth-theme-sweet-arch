# Sweet Arch LUKS Plymouth Theme

Make your Arch Linux splash screen look wonderful with this theme inspired by [Sweet by EliverLara](https://github.com/EliverLara/Sweet), featuring full LUKS password support.

![Preview](https://github.com/abrahammurciano/plymouth-theme-sweet-arch/blob/main/preview.png?raw=true)

## Features

- Beautiful animated splash screen with Sweet theme colors
- **LUKS password support** - Enter your disk encryption password with a styled dialog
- Smooth animations and transitions
- Arch Linux branding

## Installation

### Arch

```
$ yay -S plymouth-theme-sweet-arch-luks-git
```

### Other Distros

- Download and extract this repository.
- Move the folder called `sweet-arch-luks` into `/usr/share/plymouth/themes/`

## Set the Theme

To set this theme as your plymouth theme, run the following command.

```
$ sudo plymouth-set-default-theme -R sweet-arch-luks
```

## LUKS Support

This theme includes full support for LUKS disk encryption. When your system requires a password to unlock encrypted drives, the theme will display a styled password dialog that matches the Sweet theme aesthetic. The dialog includes:

- A lock icon
- Password entry field with bullet indicators
- Custom styling that matches the theme colors
