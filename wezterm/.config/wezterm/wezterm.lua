-- Wezterm configuration: https://wezfurlong.org/wezterm/config/files.html

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Define the configuration
local config = wezterm.config_builder()
config.adjust_window_size_when_changing_font_size = false
config.color_scheme = "Tokyo Night Moon"
config.enable_tab_bar = false
config.font = wezterm.font("JetBrains Mono")
config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"
config.window_padding = { left = 16, right = 16, top = 8, bottom = 8 }

-- Return configuration
return config
