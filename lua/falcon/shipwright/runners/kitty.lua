--@diagnostic disable: undefined-global
local colours = require('falcon.colours')
local kitty = require('shipwright.transform.contrib.kitty')
local overwrite = require('shipwright.transform.overwrite')
local builder = require('shipwright.builder')

builder.run(
  {
    -- standard
    fg = colours.normal_gray.hex,
    bg = colours.bg.hex,
    cursor_fg = colours.inactive_bg.hex,
    cursor_bg = colours.br_yellow.hex,
    selection_fg = colours.light_gray.hex,
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
    -- extras
    url = colours.br_blue.hex,
    name = "Falcon",
  },
  kitty,
  {overwrite, 'kitty/kitty.falcon.conf'}
)

builder.run(
  {
    -- standard
    fg = colours.mid_gray_alt2.hex,
    bg = colours.bg.hex,
    cursor_fg = colours.inactive_bg.hex,
    cursor_bg = colours.br_yellow.hex,
    selection_fg = colours.light_gray.hex,
    selection_bg = colours.dark_indigo.hex,
    black = colours.black.hex,
    red = colours.red.hex,
    green = colours.green.hex,
    yellow = colours.yellow.hex,
    blue = colours.purple.hex,
    magenta = colours.orange.hex,
    cyan = colours.cyan.hex,
    white = colours.mid_gray_alt2.hex,
    bright_black = colours.bg.hex,
    bright_red = colours.bright_red.hex,
    bright_green = colours.bright_green.hex,
    bright_yellow = colours.bright_yellow.hex,
    bright_blue = colours.blue_gray.hex,
    bright_magenta = colours.bright_orange.hex,
    bright_cyan = colours.bright_cyan.hex,
    bright_white = colours.white.hex,
    -- extras
    url = colours.br_blue.hex,
    name = "Falcon",
  },
  kitty,
  {overwrite, 'kitty/kitty.falcon.modern.conf'}
)
