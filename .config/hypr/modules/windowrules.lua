-- Window and layer rules

-- ── Window rules ──────────────────────────────────────────────────

-- Ignore maximize requests
hl.window_rule({
  name = "suppress maximize",
  match = { class = ".*" },
  suppress_event = "maximize",
})

-- Remove right-click menu blurring in Chromium browsers
hl.window_rule({
  name = "chromium noblur",
  match = { class = "^()$", title = "^()$" },
  no_blur = true,
})

-- Fix VSCode pop-up behavior
hl.window_rule({
  name = "vscode minsize",
  match = { class = "^(codium)$" },
  min_size = "1 1",
})

-- Make file picker windows floating
hl.window_rule({
  name = "file picker dialogs",
  match = {
    title = "^(Open File|Open Folder|Open|Save|Save As|Export|Import|Choose File|Rename|script-fu|kdenlive|brave)",
    class = "^(.*)$",
  },
  float = true,
  center = true,
})

hl.window_rule({
  name = "portal gtk float",
  match = { class = "(xdg-desktop-portal-gtk)" },
  float = true,
  center = true,
})

hl.window_rule({
  name = "portal hyprland float",
  match = { class = "(xdg-desktop-portal-hyprland)" },
  float = true,
  center = true,
})

hl.window_rule({
  name = "portal Xdg-gtk float+noborder",
  match = { class = "(Xdg-desktop-portal-gtk)" },
  float = true,
  center = true,
  border_size = 0,
})

hl.window_rule({
  name = "portal Xdg-hyprland float",
  match = { class = "(Xdg-desktop-portal-hyprland)" },
  float = true,
  center = true,
})

-- Disable borders for swaync
hl.window_rule({
  name = "swaync noborder",
  match = { class = "(swaync)" },
  border_size = 0,
})

-- Fix XWayland dragging issues
hl.window_rule({
  name = "xwayland drag fix",
  match = { class = "^$", title = "^$", xwayland = true, floating = true, fullscreen = false, pin = false },
  no_focus = true,
})

-- yad dialog windows
hl.window_rule({
  name = "yad floating",
  match = { class = "^(yad)$" },
  float = true,
  center = true,
})

-- Greeting window
hl.window_rule({
  name = "greeting window",
  match = { title = "^(greeting)$" },
  float = true,
  center = true,
  size = "1000 300",
  animation = "gnomed",
})

-- ── Layer rules ───────────────────────────────────────────────────

-- Waybar
hl.layer_rule({
  name = "waybar",
  match = { namespace = "waybar" },
  blur = true,
  ignore_alpha = 0.5,
  no_anim = true,
})

-- Swaync
hl.layer_rule({
  name = "swaync control center",
  match = { namespace = "swaync-control-center" },
  blur = true,
  ignore_alpha = 0.5,
})

hl.layer_rule({
  name = "swaync notifications",
  match = { namespace = "swaync-notification-window" },
  blur = true,
  ignore_alpha = 0.5,
})

-- Wlogout
hl.layer_rule({
  name = "wlogout",
  match = { namespace = "logout_dialog" },
  blur = true,
  animation = "fade",
})

-- Rofi
hl.layer_rule({
  name = "rofi",
  match = { namespace = "rofi" },
  animation = "popin 95%",
})

-- Hyprpicker
hl.layer_rule({
  name = "hyprpicker",
  match = { namespace = "hyprpicker" },
  animation = "fade",
})
