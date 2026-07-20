-- HYDE minimal-1 animation preset

hl.config({ animations = { enabled = true } })

hl.curve("hypr_ease_1", 0.5, 0.2, 0.1, 1)

hl.animation({ leaf = "windows", enabled = true, speed = 2, curve = "hypr_ease_1" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, curve = "hypr_ease_1" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2, curve = "hypr_ease_1" })
hl.animation({ leaf = "border", enabled = true, speed = 3, curve = "hypr_ease_1" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, curve = "hypr_ease_1" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2, curve = "hypr_ease_1" })
