# NatalieOS

NatalieOS is an Arch Linux-based live/install ISO.

## Building the ISO

Requires an Arch Linux host with `archiso` installed:

```bash
sudo pacman -S archiso
sudo ./build.sh
```

The resulting ISO will be in the `out/` directory.

## Features

- Arch Linux base (rolling release)
- XFCE desktop environment
- LightDM display manager
- NetworkManager
- BIOS + UEFI boot support
- Live session with persistence support

## Maintainer

Natalie Spiva <natalie@acreetionos.org>
