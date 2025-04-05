-- Pull in the wezterm API

local wezterm = require 'wezterm'


local config = wezterm.config_builder()

config.font = wezterm.font('Jetbrains Mono', { weight = 'Regular'})
config.colors = {
    -- overrides default bg color 
    -- background = '#142456'
}
config.audible_bell="Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.cursor_thickness = "2px"
-- config.cursor_height = "2px"
config.default_cursor_style = 'BlinkingBar'
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
  -- move between split pane 
  { key="RightArrow", 
    mods="CMD", 
    action=wezterm.action{ActivatePaneDirection="Next"}
  },
}
return config
