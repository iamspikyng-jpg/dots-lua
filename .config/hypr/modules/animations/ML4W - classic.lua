-- ML4W classic animation preset

hl.config({ animations = { enabled = true } })

hl.curve("ml4w_ease_1", { type = "bezier", points = { {0.5, 0.2}, {0.1, 1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "ml4w_ease_1" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "ml4w_ease_1" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "ml4w_ease_1" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "ml4w_ease_1" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "ml4w_ease_1" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "ml4w_ease_1" })
