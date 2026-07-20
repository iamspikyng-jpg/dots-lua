-- ML4W fast animation preset

hl.config({ animations = { enabled = true } })

hl.curve("ml4w_ease_1", { type = "bezier", points = { {0.5, 0.2}, {0.1, 1} } })
hl.curve("ml4w_ease_2", { type = "bezier", points = { {0.2, 0.8}, {0.2, 1} } })
hl.curve("ml4w_ease_3", { type = "bezier", points = { {0.2, 0.0}, {0.52, 1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 2, bezier = "ml4w_ease_1", style = "popin 80%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, bezier = "ml4w_ease_1", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, bezier = "ml4w_ease_2", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "ml4w_ease_3" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "ml4w_ease_3" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, bezier = "ml4w_ease_3", style = "slide" })
