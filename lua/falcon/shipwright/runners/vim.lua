-- Thanks to https://github.com/mcchrish/zenbones.nvim/blob/main/lua/zenbones/shipwright/runners/vim.lua for the extras
local falcon = require('falcon').setup()
local lushwright = require("shipwright.transform.lush")
local builder = require('shipwright.builder')
local append = require('shipwright.transform.append')
local overwrite = require('shipwright.transform.overwrite')
local colours = require('falcon.colours')

local function to_vim_autoload(colorscheme)
  local vimcolors, term = unpack(colorscheme)

  local termcolors = {
    string.format("let g:terminal_color_0 = '%s'", term.black),
    string.format("let g:terminal_color_1 = '%s'", term.red),
    string.format("let g:terminal_color_2 = '%s'", term.green),
    string.format("let g:terminal_color_3 = '%s'", term.yellow),
    string.format("let g:terminal_color_4 = '%s'", term.blue),
    string.format("let g:terminal_color_5 = '%s'", term.magenta),
    string.format("let g:terminal_color_6 = '%s'", term.cyan),
    string.format("let g:terminal_color_7 = '%s'", term.white),
    string.format("let g:terminal_color_8 = '%s'", term.bright_black),
    string.format("let g:terminal_color_9 = '%s'", term.bright_red),
    string.format("let g:terminal_color_10 = '%s'", term.bright_green),
    string.format("let g:terminal_color_11 = '%s'", term.bright_yellow),
    string.format("let g:terminal_color_12 = '%s'", term.bright_blue),
    string.format("let g:terminal_color_13 = '%s'", term.bright_magenta),
    string.format("let g:terminal_color_14 = '%s'", term.bright_cyan),
    string.format("let g:terminal_color_15 = '%s'", term.bright_white),
  }

  return vim.list_extend(termcolors, vimcolors)
end

builder.run(
  falcon,
  lushwright.to_vimscript,
  lushwright.vim_compatible_vimscript,
  function(colors)
    local vimcolors = vim.tbl_filter(function(color)
      return not string.match(color, "@")
    end, colors)
    return {
      vimcolors,
      term,
    }
    end,
  {append, {"set background=dark", "let g:colors_name=\"falcon\""}},
  {overwrite, "colors/falcon.vim"}
)
