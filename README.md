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
---

## 🤖 Pullfrog AI Review

This repository uses **Pullfrog AI** to automatically review pull requests.

Pullfrog is an AI-powered code review agent that analyzes every PR for code quality,
security issues, performance problems, and best practice violations. Reviews appear
as inline PR comments and checks. Trigger manually by commenting `@pullfrog` on any PR.

Powered by OpenRouter.