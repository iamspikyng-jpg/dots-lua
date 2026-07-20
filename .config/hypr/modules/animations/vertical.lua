hl.config({ animations = { enabled = true } })

hl.curve("myBezier", 0.05, 0.9, 0.1, 1.05)

hl.animation({ leaf = "windows", enabled = true, speed = 7, curve = "myBezier" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 7, curve = "myBezier", style = "slide" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, curve = "myBezier", style = "slide" })
hl.animation({ leaf = "border", enabled = true, speed = 10, curve = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8, curve = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 7, curve = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, curve = "myBezier", style = "slidevert" })
