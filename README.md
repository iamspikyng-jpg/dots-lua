# Hyprland Lua Dotfiles

Modernized dotfiles configuration for Hyprland 0.55+ with Lua scripting support.

## Requirements

- **Hyprland 0.55+** (with Lua support enabled)
- **CachyOS** or any Arch-based distribution
- Latest dependencies: `hyprland`, `kitty`, `waybar`, `zsh`, `git`

## Installation

```bash
# Clone the repository
git clone https://github.com/iamspikyng-jpg/dots-lua ~/.dots-lua

# Backup existing config
cp -r ~/.config/hypr ~/.config/hypr.backup

# Install dotfiles
cp -r ~/.dots-lua/.config/hypr ~/.config/
cp -r ~/.dots-lua/.config/kitty ~/.config/
cp ~/.dots-lua/.zshrc ~/
cp ~/.dots-lua/.zshenv ~/
cp ~/.dots-lua/.p10k.zsh ~/

# Update shell
chsh -s /bin/zsh

# Verify installation
ls -la ~/.config/hypr/hyprland.lua
```

## Starting Hyprland

```bash
# From TTY
Hyprland

# Or set as default session at login screen
# (select "Hyprland" from session menu)
```

## Key Bindings

| Shortcut | Action |
|----------|--------|
| `ALT + Return` | Open Terminal (Kitty) |
| `ALT + D` | Application launcher (Rofi) |
| `ALT + T` | Theme switcher |
| `ALT + [1-9, 0]` | Switch workspace |
| `ALT + W` | Close window |
| `ALT + F` | Fullscreen |
| `ALT + V` | Toggle floating |
| `ALT + Arrow Keys` | Move focus |

## Configuration

Main configuration file: `~/.config/hypr/hyprland.lua`

- **Straightforward Lua syntax** — no complex abstractions
- **All settings in one file** — easy to understand and modify
- **Uses official Hyprland Lua API** — `h.keybind()`, `h.env()`, `h.config()`, etc.
- **Modular commented sections** — organize by feature

## Architecture

```
~/.config/hypr/
├── hyprland.lua           Main entry point (all config here)
├── modules/               (Legacy, see hyprland.lua)
├── colors/                Dynamic color schemes
├── scripts/               Bash helper scripts
├── hyprlock/              Lock screen config
└── hypridle.conf          Idle/sleep behavior
```

## Customization

Edit `~/.config/hypr/hyprland.lua` directly. Examples:

### Change main modifier key
```lua
h.user_vars.mainMod = "SUPER"  -- was "ALT"
```

### Add a new keybind
```lua
h.keybind("ALT", "X", "exec", "firefox")
```

### Modify gaps
```lua
h.user_vars.gaps_in = 10
h.user_vars.gaps_out = 30
```

### Change border colors
```lua
h.config({
  general = {
    ["col.active_border"] = "rgba(ff0000ff)",
    ["col.inactive_border"] = "rgba(00000000)",
  }
})
```

## Theme Switching

Use the built-in theme switcher:

```bash
~/.config/colorschemes/rofi-launcher.sh
```

Or keyboard shortcut: `ALT + T`

## Troubleshooting

### Hyprland won't start
```bash
# Check logs
cat ~/.cache/Hyprland/latest/hyprland.log

# Reload config
hyprctl reload
```

### Keybinds not working
- Verify modifier key syntax in `hyprland.lua`
- Check for conflicting applications
- Test with: `hyprctl keyword bind ALT,Return,exec,kitty`

### Screen looks wrong
- Verify monitor configuration: `hyprctl monitors`
- Adjust gaps/border in config
- Check for conflicting compositor settings

## Resources

- [Hyprland Official Wiki](https://wiki.hyprland.org/)
- [Lua API Documentation](https://wiki.hyprland.org/Configuring/Lua-Config-API/)
- [CachyOS Hyprland Guide](https://wiki.cachyos.org/)

## License

Personal dotfiles — use freely with attribution.

## Contributing

Found an issue or improvement? Feel free to submit a PR or issue!
