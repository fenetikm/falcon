local lush = require('lush')
local colours = require('falcon.colours')
local base = require('falcon.base')
local plugins = require('falcon.plugins')
local filetypes = require('falcon.filetypes')
local extras = require('falcon.extras')

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
  method          = '#a1968a',
  path            = colours.mid_gray.hex,
  info            = colours.mid_gray.hex,
  hint            = colours.dark_tan.hex,
  error           = colours.mid_red.hex,
  warning         = colours.mid_yellow.hex,
})

local function setup()
  return lush.merge({base, plugins, filetypes, extras})
end

return {setup = setup}
