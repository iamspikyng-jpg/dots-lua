-- END-4 animation preset

hl.config({ animations = { enabled = true } })

hl.curve("fluent_decel", { type = "bezier", points = { {0, 0.2}, {0.4, 1} } })
hl.curve("easeOutCirc", { type = "bezier", points = { {0, 0.55}, {0.45, 1} } })
hl.curve("easeOutCubic", { type = "bezier", points = { {0.33, 1}, {0.68, 1} } })
hl.curve("easeinoutsine", { type = "bezier", points = { {0.37, 0}, {0.63, 1} } })

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "fluent_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "fluent_decel", style = "popin 60%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "easeOutCirc", style = "popin 60%" })
hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "easeOutCubic" })
hl.animation({ leaf = "fade", enabled = true, speed = 3, bezier = "easeinoutsine" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "easeOutCubic", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 3, bezier = "easeOutCubic", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 3, bezier = "easeinoutsine" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 3, bezier = "easeinoutsine" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "easeOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "easeOutCubic", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "easeOutCubic", style = "fade" })
