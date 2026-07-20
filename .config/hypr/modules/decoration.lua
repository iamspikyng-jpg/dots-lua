-- Decorations

dofile(os.getenv("HOME") .. "/.config/hypr/modules/decorations/showcase-2.lua")

hl.config({
  general = {
    border_size = 1,
    ["col.active_border"] = colors.grey0,
    ["col.inactive_border"] = colors.bg1,
  },
  decoration = {
    blur = {
      enabled = true,
      size = 15,
      passes = 2,
      ignore_opacity = true,
      noise = 0.08,
      contrast = 1.5,
      brightness = 0.8,
      xray = false,
      new_optimizations = true,
    },
    dim_inactive = false,
  },
})
