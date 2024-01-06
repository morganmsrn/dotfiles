-- init config
local wezterm = require 'wezterm'
local config = {}

-- debug builder
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- actual config

config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.window_background_opacity = 0.95

-- end of file
return config
