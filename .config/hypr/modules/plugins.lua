-- Plugin settings

local home = os.getenv("HOME")

hl.config({
  plugin = {
    hyprbars = {
      bar_height = 33,
      bar_color = colors.bg1,
      bar_blur = true,
      bar_title_enabled = true,
      bar_text_size = 12,
      bar_text_font = "SF Pro Display Semibold",
      bar_text_align = "center",
      bar_buttons_alignment = "left",
      bar_padding = 15,
      bar_button_padding = 6,
      ["col.text"] = colors.fg,
      ["hyprbars-button"] = {
        colors.red .. ", 15, , hyprctl dispatch killactive",
        colors.yellow .. ", 15, , " .. home .. "/.config/hypr/scripts/hyprbars-minimize.sh",
        colors.green .. ", 15, , hyprctl dispatch fullscreen 1",
      },
      on_double_click = "hyprctl dispatch fullscreen 1",
    },
    hyprexpo = {
      columns = 3,
      gap_size = 10,
      bg_col = colors.bg0,
      workspace_method = "first 1",
      skip_empty = true,
    },
    hyprfocus = {
      mode = "bounce",
      bounce_strength = 0.9,
    },
    hyprtrails = {
      color = "rgba(c0c8d5ff)",
    },
    hyprwinwrap = {
      class = "htop-kitty",
    },
  },
})
