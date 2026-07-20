# dots-lua

Hyprland dotfiles with Lua config (Hyprland 0.55+).

## Installation

```bash
# 1. Clone
git clone https://github.com/iamspikyng-jpg/dots-lua.git ~/dots-lua

# 2. Backup and install
cp -r ~/.config/hypr ~/.config/hypr.bak
cp -r ~/dots-lua/.config/* ~/.config/

# 3. Launch
Hyprland -c ~/.config/hypr/hyprland.lua
```

## Restore (if something breaks)

```bash
# 1. Remove installed config
rm -rf ~/.config/hypr ~/.config/kitty

# 2. Restore backup
cp -r ~/.config/hypr.bak ~/.config/hypr

# 3. Remove cloned repo
rm -rf ~/dots-lua
```

## Keybinds

| Touche | Action |
|---|---|
| `ALT + Return` | Terminal (kitty) |
| `ALT + D` | App launcher (rofi) |
| `ALT + T` | Theme switcher |
| `ALT + 1-9` | Workspace |
| `ALT + W/K` | Close window |
| `ALT + F` | Fullscreen |
| `ALT + V` | Toggle float |
| `ALT + arrows` | Move focus |
| `ALT + mouse:272` | Move window |
| `ALT + mouse:273` | Resize window |
| `F1-F3` | Volume |
| `F5-F6` | Brightness |
| `F9-F11` | Media |

## Structure

```
~/.config/hypr/
├── hyprland.lua         # Entry point
├── modules/             # Lua modules
│   ├── binds.lua        # Key bindings
│   ├── monitors.lua     # Monitors
│   ├── windowrules.lua  # Window + layer rules
│   ├── animations.lua   # Animation loader
│   ├── animations/      # 20+ presets
│   └── ...
├── colors/
│   ├── colors.lua       # Theme selector
│   └── custom/          # 11 color themes
└── scripts/             # Shell scripts
```

## Themes

Edit `~/.config/hypr/colors/colors.lua` to switch.

Available: rose-pine, catppuccin-mocha, everforest-dark, gruvbox-dark, kanagawa, monochrome, nightfox, nord, tokyo-night, e-ink, matugen

## Requirements

Hyprland 0.55+, CachyOS / Arch Linux
