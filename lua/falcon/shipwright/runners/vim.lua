-- Thanks to https://github.com/mcchrish/zenbones.nvim/blob/main/lua/zenbones/shipwright/runners/vim.lua for the extras
local falcon = require('falcon').setup(true)
local lushwright = require("shipwright.transform.lush")
local builder = require('shipwright.builder')
local append = require('shipwright.transform.append')
local prepend = require('shipwright.transform.prepend')
local overwrite = require('shipwright.transform.overwrite')
local colours = require('falcon.colours')

local term_colours = {
    string.format("let g:terminal_color_0 = '%s'", colours.black.hex),
    string.format("let g:terminal_color_1 = '%s'", colours.red.hex),
    string.format("let g:terminal_color_2 = '%s'", colours.green.hex),
    string.format("let g:terminal_color_3 = '%s'", colours.yellow.hex),
    string.format("let g:terminal_color_4 = '%s'", colours.purple.hex),
    string.format("let g:terminal_color_5 = '%s'", colours.orange.hex),
    string.format("let g:terminal_color_6 = '%s'", colours.cyan.hex),
    string.format("let g:terminal_color_7 = '%s'", colours.normal_gray.hex),
    string.format("let g:terminal_color_8 = '%s'", colours.bg.hex),
    string.format("let g:terminal_color_9 = '%s'", colours.bright_red.hex),
    string.format("let g:terminal_color_10 = '%s'", colours.bright_green.hex),
    string.format("let g:terminal_color_11 = '%s'", colours.bright_yellow.hex),
    string.format("let g:terminal_color_12 = '%s'", colours.blue_gray.hex),
    string.format("let g:terminal_color_13 = '%s'", colours.bright_orange.hex),
    string.format("let g:terminal_color_14 = '%s'", colours.bright_cyan.hex),
    string.format("let g:terminal_color_15 = '%s'", colours.white.hex),
}

print ('Running vim build...')

builder.run(
  falcon,
  lushwright.to_vimscript,
  lushwright.vim_compatible_vimscript,
  function(lines)
    local filtered_lines = vim.tbl_filter(function(line)
      return not string.match(line, "@")
    end, lines)
    return filtered_lines
  end,
  {prepend, {"set background=dark", "let g:colors_name=\"falcon\"", ""}},
  {prepend, {"hi clear", "if exists(\"syntax_on\")", "  syntax reset", "endif", ""}},
  {append, term_colours},
  {overwrite, "colors/falcon.vim"}
)

print ('Done!')
