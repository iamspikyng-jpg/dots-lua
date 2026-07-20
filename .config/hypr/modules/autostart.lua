-- Autostart

local home = os.getenv("HOME")

hl.on("hyprland.start", function()
  hl.exec_cmd("bash " .. home .. "/.config/waybar/scripts/launch.sh")
  hl.exec_cmd("swww-daemon")
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("udiskie")
  hl.exec_cmd("swaync")
  hl.exec_cmd("hyprctl setcursor macOS 24")
end)
