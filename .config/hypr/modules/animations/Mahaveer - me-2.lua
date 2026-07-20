-- Mahaveer me-2 animation preset

hl.config({ animations = { enabled = true } })

hl.curve("mahaveer_bezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows", enabled = true, speed = 10, bezier = "mahaveer_bezier" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 10, bezier = "mahaveer_bezier", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 10, bezier = "mahaveer_bezier", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 12, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 8, bezier = "mahaveer_bezier", style = "slidevert" })
