# Migration: HyprConf → Lua

## Why?

Hyprland 0.55+ (May 2025) deprecated the HyprConf (`.conf`) syntax in favor of full Lua (`.lua`) configuration. The old `.conf` format will be **completely removed** in future releases. CachyOS ships with the latest Hyprland, so this repo **requires** the Lua migration.

## API mapping (official Hyprland Lua API)

| Before (.conf) | After (.lua) |
|---|---|
| `$variable = value` | `local var = "value"` or the global `colors` table |
| `source = path/file.conf` | `dofile(os.getenv("HOME") .. "/path/to/file.lua")` |
| `env = KEY,value` | `hl.env("KEY", "value")` |
| `monitor = ,preferred,auto,1` | `hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })` |
| `exec-once = command` | `hl.on("hyprland.start", function() hl.exec_cmd("command") end)` |
| `general { gaps_in = 9 }` | `hl.config({ general = { gaps_in = 9 } })` |
| `decoration { blur { enabled = true } }` | `hl.config({ decoration = { blur = { enabled = true } } })` |
| `input { kb_layout = us }` | `hl.config({ input = { kb_layout = "us" } })` |
| `misc { disable_hyprland_logo = true }` | `hl.config({ misc = { disable_hyprland_logo = true } })` |
| `bind = MODS, key, dispatcher, params` | `hl.bind("MODS + key", hl.dsp.dispatcher(params))` |
| `bind = ALT, Return, exec, kitty` | `hl.bind("ALT + Return", hl.dsp.exec_cmd("kitty"))` |
| `bindel = , F1, exec, script` | `hl.bind("F1", hl.dsp.exec_cmd("script"), { locked = true, repeating = true })` |
| `bindm = ALT, mouse:272, movewindow` | `hl.bind("ALT + mouse:272", hl.dsp.movewindow(), { mouse = true })` |
| `windowrule = float, class:(yad)` | `hl.window_rule({ name = "yad", match = { class = "(yad)" }, float = true })` |
| `windowrulev2 = float, class:(yad)` | (same as windowrule) |
| `layerrule = blur, waybar` | `hl.layer_rule({ name = "waybar", match = { namespace = "waybar" }, blur = true })` |
| `gesture = 4, down, exec, kitty` | `hl.gesture({ fingers = 4, direction = "down", action = "exec", cmd = "kitty" })` |
| `workspace = 1, persistent:true` | `hl.workspace_rule({ workspace = "1", persistent = true })` |
| `animations { enabled = true }` | `hl.config({ animations = { enabled = true } })` |
| `animations:bezier = name, c1, c2, e1, e2` | `hl.curve("name", c1, c2, e1, e2)` |
| `animations:animation = leaf, 1, 5, curve, style` | `hl.animation({ leaf = "...", enabled = true, speed = 5, curve = "...", style = "..." })` |
| `plugin:name:key = value` | `hl.config({ plugin = { name = { key = value } } })` |
| `col.active_border = rgb(...)` | use `"rgba(rrggbbaa)"` (8-digit hex with alpha) |
| `hyprctl reload` | `hyprctl reloadconfig` (recommended for Lua) |

## Key dispatchers (`hl.dsp.*`)

| Dispatcher | Usage |
|---|---|
| `hl.dsp.exec_cmd("cmd")` | Execute a shell command |
| `hl.dsp.killactive()` | Kill active window |
| `hl.dsp.exit()` | Exit Hyprland |
| `hl.dsp.toggle({ fullscreen = 1 })` | Toggle fullscreen |
| `hl.dsp.toggle({ floating = true })` | Toggle floating |
| `hl.dsp.toggle({ workspace = "special:scratchpad" })` | Toggle special workspace |
| `hl.dsp.focus({ workspace = N })` | Switch to workspace |
| `hl.dsp.focus({ workspace = "e+1" })` | Scroll workspace |
| `hl.dsp.focus({ direction = "l" })` | Move focus (l/r/u/d) |
| `hl.dsp.move({ workspace = N })` | Move window to workspace |
| `hl.dsp.move({ direction = "l" })` | Move window direction (l/r/u/d) |
| `hl.dsp.resize({ width = -50, height = 0 })` | Resize active window |
| `hl.dsp.layoutmsg("msg")` | Send layout message |
| `hl.dsp.pseudo()` | Toggle pseudo tiling |
| `hl.dsp.movewindow()` | Enter move window mode (mouse bind) |
| `hl.dsp.resizewindow()` | Enter resize window mode (mouse bind) |

## File structure

```
.config/hypr/
├── hyprland.lua              # Entry point — loads all modules
├── colors/
│   ├── colors.lua            # Theme selector (edit to switch palette)
│   └── custom/
│       ├── rose-pine.lua     # Active color theme
│       └── ...               # 10+ alternative themes
├── modules/
│   ├── env.lua               # Environment variables (hl.env)
│   ├── monitors.lua          # Monitor config (hl.monitor)
│   ├── autostart.lua         # Autostart apps (hl.on("hyprland.start", ...))
│   ├── input.lua             # Input settings
│   ├── decoration.lua        # Decorations + loads decoration preset
│   ├── animations.lua        # Animation preset loader
│   ├── layout.lua            # Layout settings (dwindle, master)
│   ├── misc.lua              # Miscellaneous settings
│   ├── workspaces.lua        # Workspace rules
│   ├── binds.lua             # Key bindings
│   ├── windowrules.lua       # Window + layer rules
│   ├── plugins.lua           # Plugin settings
│   ├── gestures.lua          # Touchpad gestures
│   ├── decorations/          # Decoration presets (selectable)
│   │   ├── default.lua
│   │   ├── showcase-1.lua
│   │   └── showcase-2.lua
│   └── animations/           # Animation presets (20+ available)
│       ├── riverine-horizontal.lua
│       └── ...
└── scripts/                  # Shell scripts (unchanged)
    ├── volume.sh
    ├── brightness.sh
    ├── blitz-mode.sh
    └── ...
```

## Switching themes, animations, decorations

- **Themes**: edit `colors/colors.lua` — change `dofile` to any file in `colors/custom/`
- **Animations**: edit `modules/animations.lua` — change `dofile` to any file in `modules/animations/`
- **Decorations**: edit `modules/decoration.lua` — change `dofile` in that file

## Running Hyprland

```bash
Hyprland -c ~/.config/hypr/hyprland.lua
```

## Troubleshooting

### Check for syntax errors
```bash
Hyprland -c ~/.config/hypr/hyprland.lua --debug 2>&1 | grep -i error
luac -p ~/.config/hypr/hyprland.lua
```

### Binds not working
- Run `hyprctl binds` to inspect active bindings
- Modifier names: `SUPER`, `ALT`, `CTRL`, `SHIFT` (uppercase, space-separated)
- Key format: `"MODS + KEY"` (e.g. `"ALT SHIFT + Return"`)

### Plugin config
Plugins use `hl.config({ plugin = { name = { key = value } } })`. Dotted keys like `col.border_1` must be quoted: `["col.border_1"]`.

### Color format
Use `"rgba(rrggbbaa)"` with 8 hex digits (the `rgba()` string, not `rgb()`). Alpha `ff` is fully opaque.

## Requirements

- **Hyprland 0.55+** (Lua support)
- CachyOS / Arch Linux: `sudo pacman -S hyprland`
