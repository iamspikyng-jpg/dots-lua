-- HYDE Vertical animation preset

hl.config({ animations = { enabled = true } })

hl.curve("hypr_ease_1", 0.5, 0.2, 0.1, 1)
hl.curve("hypr_ease_2", 0.2, 0.8, 0.2, 1)
hl.curve("hypr_ease_3", 0.2, 0.0, 0.52, 1)
hl.curve("hypr_ease_4", 0.4, 0.0, 0.6, 1)

hl.animation({ leaf = "windows", enabled = true, speed = 3, curve = "hypr_ease_1", style = "slidevert" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, curve = "hypr_ease_1", style = "slidevert" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, curve = "hypr_ease_2", style = "slidevert" })
hl.animation({ leaf = "border", enabled = true, speed = 8, curve = "hypr_ease_3" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 20, curve = "hypr_ease_4" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, curve = "hypr_ease_3" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 2, curve = "hypr_ease_3", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2, curve = "hypr_ease_2", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, curve = "hypr_ease_3" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, curve = "hypr_ease_2" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, curve = "hypr_ease_3", style = "slidevert" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 2, curve = "hypr_ease_3", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2, curve = "hypr_ease_2", style = "slidevert" })
