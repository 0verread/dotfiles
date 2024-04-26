-- Pull in the wezterm API

local wezterm = require 'wezterm'


local config = wezterm.config_builder()

config.font = wezterm.font('JetBrains Mono', { weight = 'Bold'})

config.keys = {

  -- This will create a new split and run your default program inside it
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'D',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true }
  },
}
return config
