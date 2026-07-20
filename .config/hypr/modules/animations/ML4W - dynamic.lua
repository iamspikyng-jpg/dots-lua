-- ML4W dynamic animation preset

hl.config({ animations = { enabled = true } })

hl.curve("ml4w_ease_1", 0.5, 0.2, 0.1, 1)
hl.curve("ml4w_ease_2", 0.2, 0.8, 0.2, 1)
hl.curve("ml4w_ease_3", 0.2, 0.0, 0.52, 1)
hl.curve("ml4w_ease_4", 0.4, 0.0, 0.6, 1)

hl.animation({ leaf = "windows", enabled = true, speed = 4, curve = "ml4w_ease_1", style = "popin 80%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, curve = "ml4w_ease_1", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, curve = "ml4w_ease_2", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 8, curve = "ml4w_ease_3" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 20, curve = "ml4w_ease_4" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, curve = "ml4w_ease_3" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, curve = "ml4w_ease_3", style = "slide" })
