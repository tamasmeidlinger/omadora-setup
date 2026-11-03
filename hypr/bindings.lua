-- Keep only your personal keybinding overrides here. Add new bindings with
-- o.bind or replace defaults with o.rebind.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding. o.rebind takes the same arguments as o.bind.
-- This example replaces the default file manager with Flea.
-- o.rebind("SUPER + SHIFT + F", "File manager", { launch = "flea" })

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

o.bind("CTRL + SHIFT + K", "Next workspace", hl.dsp.focus({ workspace = "e+1" }))
o.bind("CTRL + SHIFT + J", "Previous workspace", hl.dsp.focus({ workspace = "e-1" }))

o.bind("CTRL + SPACE", "Rofi", "rofi -show drun")
o.bind("CTRL + RETURN", "Launch Terminal", "foot")

o.rebind("F9", "Move focus left", hl.dsp.focus({ direction = "left" }))
o.rebind("F10", "Move focus left", hl.dsp.focus({ direction = "down" }))
o.rebind("F11", "Move focus left", hl.dsp.focus({ direction = "up" }))
o.rebind("F12", "Move focus left", hl.dsp.focus({ direction = "right" }))

o.rebind("SHIFT + F9", "Move window left", hl.dsp.window.move({ direction = "left" }))
o.rebind("SHIFT + F10", "Move window down", hl.dsp.window.move({ direction = "down" }))
o.rebind("SHIFT + F11", "Move window up", hl.dsp.window.move({ direction = "up" }))
o.rebind("SHIFT + F12", "Move window right", hl.dsp.window.move({ direction = "right" }))

-- Logitech MX Keys examples:
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, { panel = "omarchy.emojis" })
