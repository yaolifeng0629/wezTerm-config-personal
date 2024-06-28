local wezterm = require('wezterm')
local gpu_adapters = require('utils.gpu_adapter')
local colors = require('colors.custom')

return {
   -- automatically_reload_config = true,
   -- animation_fps = 60,
   -- max_fps = 60,
   exit_behavior = "CloseOnCleanExit",
   -- status_update_interval = 1000,
   -- front_end = 'WebGpu',
   -- webgpu_power_preference = 'HighPerformance',
   -- webgpu_preferred_adapter = gpu_adapters:pick_best(),

   -- color scheme
    -- colors = colors,

   -- color_scheme = "zenbones_dark",
   -- color_scheme = "FishTank",
   color_scheme = "arcoiris",
   -- color_scheme = "Blue Matrix",
   -- color_scheme = "Cobalt2",

   -- background
   background = {
      {
         source = { File = wezterm.GLOBAL.background },
         horizontal_align = 'Center',
      },
      {
         source = { Color = colors.background },
         height = '100%',
         width = '100%',
         opacity = 0.96,
      },
   },

   -- scrollbar
   -- enable_scroll_bar = true,

   -- tab bar
   enable_tab_bar = true,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = true,
   tab_max_width = 30,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window
   window_padding = {
      left = 5,
      right = 10,
      top = 12,
      bottom = 7,
   },
   window_close_confirmation = 'NeverPrompt',
   window_decorations = "INTEGRATED_BUTTONS|RESIZE",
   integrated_title_button_style = "Windows",
   integrated_title_button_color = "auto",
   integrated_title_button_alignment = "Right",
   default_cursor_style = 'BlinkingBar',
   default_cwd = "D:\\Projects\\PersonalProject",
   default_prog = { "pwsh", "-NoLogo" },
   window_frame = {
      -- active_titlebar_bg = '#090909',
      active_titlebar_bg = "#0F2536",
      inactive_titlebar_bg = "#0F2536",
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   inactive_pane_hsb = {
      saturation = 0.7,
      brightness = 0.65,
   },
}
