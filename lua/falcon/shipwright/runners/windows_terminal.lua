--@diagnostic disable: undefined-global
local colours = require('falcon.colours')
local windows_terminal = require('shipwright.transform.contrib.windows_terminal')
local overwrite = require('shipwright.transform.overwrite')
local builder = require('shipwright.builder')

print ('Running alacritty build...')

builder.run(
  {
    -- standard
    name = 'Falcon',
    fg = colours.normal_gray.hex,
    bg = colours.bg.hex,
    cursor_bg = colours.br_yellow.hex,
    selection_bg = colours.dark_indigo.hex,
    black = colours.black.hex,
    red = colours.red.hex,
    green = colours.green.hex,
    yellow = colours.yellow.hex,
    blue = colours.purple.hex,
    magenta = colours.orange.hex,
    cyan = colours.cyan.hex,
    white = colours.normal_gray.hex,
    bright_black = colours.bg.hex,
    bright_red = colours.bright_red.hex,
    bright_green = colours.bright_green.hex,
    bright_yellow = colours.bright_yellow.hex,
    bright_blue = colours.blue_gray.hex,
    bright_magenta = colours.bright_orange.hex,
    bright_cyan = colours.bright_cyan.hex,
    bright_white = colours.white.hex,
  },
  windows_terminal,
  {overwrite, 'windowsterminal/falcon.json'}
)

print ('Done!')
