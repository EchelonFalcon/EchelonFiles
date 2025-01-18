-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Font Settings
config.font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Light", italic = false })

config.font_size = 13

config.enable_tab_bar = false
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "catppuccin-macchiato"

config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

config.window_padding = {
  left = 10,
  right = 10,
  top = 25,
  bottom = 0,
}

config.default_cursor_style = "SteadyBar"

-- and finally, return the configuration to wezterm
return config
