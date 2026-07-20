-- Key bindings

local home = os.getenv("HOME")

-- ── Application launchers ─────────────────────────────────────────

hl.bind("ALT + Return", hl.dsp.exec_cmd("kitty"))
hl.bind("ALT SHIFT + Return", hl.dsp.exec_cmd("alacritty"))
hl.bind("ALT + X", hl.dsp.exec_cmd("kitty --override font_size=35 --title=greeting " .. home .. "/.local/bin/workflow-greeting & sleep 0.5"))
hl.bind("ALT + G", hl.dsp.exec_cmd("ristretto -f " .. home .. "/Documents/alchemy/vision-board.png"))
hl.bind("ALT + B", hl.dsp.exec_cmd("zen-browser"))
hl.bind("ALT SHIFT + B", hl.dsp.exec_cmd("brave"))
hl.bind("ALT + E", hl.dsp.exec_cmd("thunar"))
hl.bind("ALT SHIFT + E", hl.dsp.exec_cmd("nautilus"))

-- ── App launcher / calculator ─────────────────────────────────────

hl.bind("ALT + D", hl.dsp.exec_cmd("pkill rofi || rofi -show drun -theme ~/.local/share/rofi/themes/grid.rasi"))
hl.bind("ALT + C", hl.dsp.exec_cmd("rofi -show calc -theme ~/.local/share/rofi/themes/minimal.rasi"))

-- ── Wallpaper / theme ─────────────────────────────────────────────

hl.bind("ALT SHIFT + T", hl.dsp.exec_cmd("pkill rofi || " .. home .. "/.config/colorschemes/wallpaper-selector.sh"))
hl.bind("ALT + T", hl.dsp.exec_cmd("pkill rofi || " .. home .. "/.config/colorschemes/rofi-launcher.sh"))

-- ── Screenshots ───────────────────────────────────────────────────

hl.bind("ALT + F12", hl.dsp.exec_cmd("grim -t png -l 5"))
hl.bind("ALT SHIFT + F12", hl.dsp.exec_cmd("grim -t png -l 0 -g \"$(slurp)\" " .. home .. "/Pictures/screenshot_$(date +%s).png"))

-- ── Kill / exit / fullscreen / float ──────────────────────────────

hl.bind("ALT + K", hl.dsp.killactive())
hl.bind("ALT + W", hl.dsp.killactive())
hl.bind("ALT + M", hl.dsp.exec_cmd("hyprctl dispatch exit"))
hl.bind("ALT + F", hl.dsp.toggle({ fullscreen = 1 }))
hl.bind("ALT + V", hl.dsp.toggle({ floating = true }))

-- ── Lock screen ───────────────────────────────────────────────────

hl.bind("ALT + L", hl.dsp.exec_cmd("hyprlock -c " .. home .. "/.config/hypr/hyprlock/hyprlock.conf"))

-- ── Notification center ──────────────────────────────────────────

hl.bind("ALT + A", hl.dsp.exec_cmd("swaync-client -t -sw"))
hl.bind("ALT CTRL SHIFT + A", hl.dsp.exec_cmd("swaync-client -R && swaync-client -rs"))

-- ── Color picker ─────────────────────────────────────────────────

hl.bind("ALT + H", hl.dsp.exec_cmd("hyprpicker -a"))

-- ── Logout menu ──────────────────────────────────────────────────

hl.bind("CTRL ALT + DELETE", hl.dsp.exec_cmd("wlogout -l .config/wlogout/layout -C .config/wlogout/theme.css -b 5 -p layer-shell -B 400 -T 400"))

-- ── Volume / brightness (locked + repeating, no mods) ────────────

hl.bind("F1", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/volume.sh --toggle"), { locked = true, repeating = true })
hl.bind("F2", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/volume.sh --dec"), { locked = true, repeating = true })
hl.bind("F3", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/volume.sh --inc"), { locked = true, repeating = true })

hl.bind("F5", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/brightness.sh --dec"), { locked = true, repeating = true })
hl.bind("F6", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/brightness.sh --inc"), { locked = true, repeating = true })

-- ── Night mode ───────────────────────────────────────────────────

hl.bind("ALT + N", hl.dsp.exec_cmd(home .. "/.local/bin/night-mode.sh"))

-- ── Blitz mode ───────────────────────────────────────────────────

hl.bind("WIN + F1", hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/blitz-mode.sh"))

-- ── Media keys ───────────────────────────────────────────────────

hl.bind("F9", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("F10", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("F11", hl.dsp.exec_cmd("playerctl next"))

-- ── Hyprbars plugin toggle ───────────────────────────────────────

local hyprbars_path = "/var/cache/hyprpm/user0/hyprland-plugins/hyprbars.so"
hl.bind("ALT + Y", hl.dsp.exec_cmd("hyprctl plugin load " .. hyprbars_path))
hl.bind("ALT SHIFT + Y", hl.dsp.exec_cmd("hyprctl plugin unload " .. hyprbars_path))

-- ── Bar ──────────────────────────────────────────────────────────

hl.bind("ALT + R", hl.dsp.exec_cmd(home .. "/.config/waybar/scripts/launch.sh"))
hl.bind("ALT SHIFT + R", hl.dsp.exec_cmd("waybar-layout-switcher"))

-- ── Layout switching ─────────────────────────────────────────────

hl.bind("ALT + J", hl.dsp.exec_cmd("hyprctl keyword general:layout scrolling"))
hl.bind("ALT SHIFT + J", hl.dsp.exec_cmd("hyprctl keyword general:layout master"))

-- ── Workspace switching (ALT + [0-9]) ────────────────────────────

for i = 1, 9 do
  hl.bind("ALT + " .. i, hl.dsp.focus({ workspace = i }))
end
hl.bind("ALT + 0", hl.dsp.focus({ workspace = 10 }))

-- Move window to workspace (ALT SHIFT + [0-9])

for i = 1, 9 do
  hl.bind("ALT SHIFT + " .. i, hl.dsp.move({ workspace = i }))
end
hl.bind("ALT SHIFT + 0", hl.dsp.move({ workspace = 10 }))

-- ── Scratchpad (special workspace) ───────────────────────────────

hl.bind("ALT + S", hl.dsp.toggle({ workspace = "special:scratchpad" }))
hl.bind("ALT SHIFT + S", hl.dsp.move({ workspace = "special" }))

-- ── Move focus ───────────────────────────────────────────────────

hl.bind("ALT + left", hl.dsp.focus({ direction = "l" }))
hl.bind("ALT + right", hl.dsp.focus({ direction = "r" }))
hl.bind("ALT + up", hl.dsp.focus({ direction = "u" }))
hl.bind("ALT + down", hl.dsp.focus({ direction = "d" }))

-- ── Scroll workspaces ────────────────────────────────────────────

hl.bind("ALT + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("ALT + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- ── Move / resize windows (keyboard) ─────────────────────────────

hl.bind("CTRL ALT + LEFT", hl.dsp.resize({ width = -50, height = 0 }))
hl.bind("CTRL ALT + RIGHT", hl.dsp.resize({ width = 50, height = 0 }))
hl.bind("CTRL ALT + UP", hl.dsp.resize({ width = 0, height = -50 }))
hl.bind("CTRL ALT + DOWN", hl.dsp.resize({ width = 0, height = 50 }))

hl.bind("SUPER SHIFT + left", hl.dsp.move({ direction = "l" }))
hl.bind("SUPER SHIFT + right", hl.dsp.move({ direction = "r" }))
hl.bind("SUPER SHIFT + up", hl.dsp.move({ direction = "u" }))
hl.bind("SUPER SHIFT + down", hl.dsp.move({ direction = "d" }))

-- ── Mouse bindings (move/resize windows) ─────────────────────────

hl.bind("ALT + mouse:272", hl.dsp.movewindow(), { mouse = true })
hl.bind("ALT + mouse:273", hl.dsp.resizewindow(), { mouse = true })

-- ── Zoom (cursor zoom factor via callback) ───────────────────────

local function zoom(multiplier)
  hl.exec_cmd("hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor | awk '/^float.*/ {print $2 * " .. multiplier .. "}')")
end

hl.bind("SUPER + mouse_down", function() zoom(1.1) end)
hl.bind("SUPER + mouse_up", function() zoom(0.9) end)
hl.bind("SUPER + equal", function() zoom(1.1) end, { repeating = true })
hl.bind("SUPER + minus", function() zoom(0.9) end, { repeating = true })
hl.bind("SUPER SHIFT + 0", function() hl.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1") end)

-- ── Dwindle layout ───────────────────────────────────────────────

hl.bind("ALT + P", hl.dsp.pseudo())

-- ── Master layout ────────────────────────────────────────────────

hl.bind("SUPER + M", hl.dsp.layoutmsg("addmaster"))
hl.bind("SUPER SHIFT + M", hl.dsp.layoutmsg("removemaster"))
hl.bind("SUPER + H", hl.dsp.layoutmsg("mfact -0.05"))
hl.bind("SUPER + L", hl.dsp.layoutmsg("mfact +0.05"))

-- ── Scrolling layout ─────────────────────────────────────────────

hl.bind("SUPER + period", hl.dsp.layoutmsg("move +col"))
hl.bind("SUPER + comma", hl.dsp.layoutmsg("move -col"))

hl.bind("SUPER SHIFT + period", hl.dsp.layoutmsg("movewindowto r"))
hl.bind("SUPER SHIFT + comma", hl.dsp.layoutmsg("movewindowto l"))
hl.bind("SUPER SHIFT + up", hl.dsp.layoutmsg("movewindowto u"))
hl.bind("SUPER SHIFT + down", hl.dsp.layoutmsg("movewindowto d"))

hl.bind("SUPER + equal", hl.dsp.layoutmsg("colresize +0.1"))
hl.bind("SUPER + minus", hl.dsp.layoutmsg("colresize -0.1"))
hl.bind("SUPER + c", hl.dsp.layoutmsg("colresize +conf"))
hl.bind("SUPER + x", hl.dsp.layoutmsg("colresize -conf"))

hl.bind("SUPER + p", hl.dsp.layoutmsg("promote"))
hl.bind("SUPER + f", hl.dsp.layoutmsg("togglefit"))
hl.bind("SUPER + s", hl.dsp.layoutmsg("swapcol r"))
hl.bind("SUPER + a", hl.dsp.layoutmsg("swapcol l"))

-- Move column to workspace
for i = 1, 3 do
  hl.bind("SUPER + " .. i, hl.dsp.layoutmsg("movecoltoworkspace " .. i))
end
