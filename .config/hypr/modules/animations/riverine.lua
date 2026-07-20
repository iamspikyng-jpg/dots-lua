hl.config({ animations = { enabled = true } })

hl.curve("overshot", 0.05, 0.9, 0.1, 1.1)
hl.curve("smooth", 0.35, 0.15, 0.15, 0.95)
hl.curve("slide", 0.35, 0.15, 0.15, 0.95)
hl.curve("pop", 0.2, 0.0, 0.0, 1.0)

hl.animation({ leaf = "windows", enabled = true, speed = 5, curve = "overshot", style = "pop" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, curve = "slide", style = "pop" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, curve = "smooth", style = "pop" })
hl.animation({ leaf = "border", enabled = true, speed = 6, curve = "smooth" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 15, curve = "smooth" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, curve = "smooth" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, curve = "smooth", style = "slide" })
