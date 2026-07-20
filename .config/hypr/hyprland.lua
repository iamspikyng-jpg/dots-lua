-- Hyprland Lua Config — main entry point
-- Requires Hyprland 0.55+ (Lua migration)

local home = os.getenv("HOME")

-- Load color palette
colors = dofile(home .. "/.config/hypr/colors/colors.lua")

-- Load all modules in dependency order
dofile(home .. "/.config/hypr/modules/env.lua")
dofile(home .. "/.config/hypr/modules/monitors.lua")
dofile(home .. "/.config/hypr/modules/autostart.lua")
dofile(home .. "/.config/hypr/modules/input.lua")
dofile(home .. "/.config/hypr/modules/decoration.lua")
dofile(home .. "/.config/hypr/modules/animations.lua")
dofile(home .. "/.config/hypr/modules/layout.lua")
dofile(home .. "/.config/hypr/modules/misc.lua")
dofile(home .. "/.config/hypr/modules/workspaces.lua")
dofile(home .. "/.config/hypr/modules/binds.lua")
dofile(home .. "/.config/hypr/modules/windowrules.lua")
dofile(home .. "/.config/hypr/modules/plugins.lua")
dofile(home .. "/.config/hypr/modules/gestures.lua")
