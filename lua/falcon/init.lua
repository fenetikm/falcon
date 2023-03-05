local lush = require('lush')
local colours = require('falcon.colours')
local plugins = require('falcon.plugins.common')
local filetypes = require('falcon.filetypes.common')
local extras = require('falcon.extras.common')
local settings = require('falcon.settings')

vim.api.nvim_set_var('falcon.palette', {
  red             = colours.red.hex,
  orange          = colours.orange.hex,
  yellow          = colours.yellow.hex,
  green           = colours.green.hex,
  blue_gray       = colours.blue_gray.hex,
  purple          = colours.purple.hex,
  indigo          = colours.indigo.hex,
  status          = colours.status.hex,
  status_2        = colours.dark_gray.hex,
  inactive_status = colours.inactive_status.hex,
  black           = colours.black.hex,
  white           = colours.white.hex,
  light_gray      = colours.light_gray.hex,
  normal_gray     = colours.normal_gray.hex,
  mid_gray        = colours.mid_gray.hex,
  mid_dark_gray   = colours.mid_dark_gray.hex,
  dark_gray       = colours.dark_gray.hex,
  modified        = colours.light_blue_gray.hex,
  branch          = colours.blue_gray.hex,
  method          = colours.dark_tan.hex,
  path            = colours.mid_gray.hex,
  info            = colours.mid_gray.hex,
  hint            = colours.dark_tan.hex,
  error           = colours.mid_red.hex,
  warning         = colours.mid_yellow.hex,
})

if vim.fn.has('nvim') == 1 then
  vim.g.terminal_color_0 = colours.black.hex
  vim.g.terminal_color_1 = colours.red.hex
  vim.g.terminal_color_2 = colours.green.hex
  vim.g.terminal_color_3 = colours.yellow.hex
  vim.g.terminal_color_4 = colours.purple.hex
  vim.g.terminal_color_5 = colours.orange.hex
  vim.g.terminal_color_6 = colours.cyan.hex
  vim.g.terminal_color_7 = colours.normal_gray.hex
  vim.g.terminal_color_8 = colours.bg.hex
  vim.g.terminal_color_9 = colours.bright_red.hex
  vim.g.terminal_color_10 = colours.bright_green.hex
  vim.g.terminal_color_11 = colours.bright_yellow.hex
  vim.g.terminal_color_12 = colours.blue_gray.hex
  vim.g.terminal_color_13 = colours.bright_orange.hex
  vim.g.terminal_color_14 = colours.bright_cyan.hex
  vim.g.terminal_color_15 = colours.white.hex
end

local function setup()
  if settings.variation == 'classic' then
    return lush.merge({
      require('falcon.classic'),
      require('falcon.plugins.common'),
      require('falcon.plugins.classic'),
      require('falcon.filetypes.common'),
      require('falcon.filetypes.classic'),
      require('falcon.extras.common'),
      require('falcon.extras.classic'),
    })
  end

  if settings.variation == 'zen' then
    return lush.merge({
      require('falcon.zen'),
      require('falcon.plugins.common'),
      require('falcon.plugins.zen'),
      require('falcon.filetypes.zen'),
      require('falcon.extras.common'),
      require('falcon.extras.zen'),
    })
  end

  return {}
end

return {setup = setup}
