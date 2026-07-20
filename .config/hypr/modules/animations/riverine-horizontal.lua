-- Riverine Horizontal animation preset

hl.config({ animations = { enabled = true } })

hl.curve("md3_decel", 0.05, 0.7, 0.1, 1)
hl.curve("md3_accel", 0.3, 0, 0.8, 0.15)
hl.curve("menu_decel", 0.1, 1, 0, 1)
hl.curve("menu_accel", 0.38, 0.04, 1, 0.07)

hl.animation({ leaf = "windows", enabled = true, speed = 3, curve = "md3_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, curve = "md3_decel", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, curve = "md3_accel", style = "popin 60%" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, curve = "menu_decel", style = "slide right" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, curve = "menu_accel", style = "slide right" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, curve = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 4.5, curve = "menu_accel" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 7, curve = "menu_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, curve = "md3_decel", style = "slide" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, curve = "md3_decel" })
