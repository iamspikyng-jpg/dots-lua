hl.config({ animations = { enabled = true } })

hl.curve("overshot", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.1} } })
hl.curve("smooth", { type = "bezier", points = { {0.35, 0.15}, {0.15, 0.95} } })
hl.curve("slide", { type = "bezier", points = { {0.35, 0.15}, {0.15, 0.95} } })
hl.curve("pop", { type = "bezier", points = { {0.2, 0.0}, {0.0, 1.0} } })

hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "overshot", style = "pop" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, bezier = "slide", style = "pop" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smooth", style = "pop" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "smooth" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 15, bezier = "smooth" })
hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "smooth" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "smooth", style = "slide" })
