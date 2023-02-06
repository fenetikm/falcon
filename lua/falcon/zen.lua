--@diagnostic disable: undefined-global

local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local settings = require('falcon.settings')
local base_ui = require('falcon.base_ui')

local windowBg = colours.bg
local windowBgNC = colours.inactive_bg
if not settings.inactive_bg then
  windowBgNC = colours.bg
end

if settings.transparent_bg then
  windowBg = 'NONE'
  windowBgNC = 'NONE'
end

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- Base syntax
    Normal         {fg = colours.mid_gray_alt2, bg = windowBg},
    NormalNC       {fg = colours.mid_gray_alt2, bg = windowBgNC},
    Comment        {fg = colours.darker_bluer_gray, gui = styles.italic_comments},
    Constant       {},
    String         {fg = colours.light_bluer_gray},
    Character      {},
    Boolean        {},
    Number         {},
    Float          {},
    Identifier     {},
    Function       {gui = styles.bold},
    Conditional    {},
    Statement      {},
    Exception      {},
    Repeat         {},
    Label          {},
    Operator       {fg = colours.darker_tanner},
    Keyword        {},
    PreProc        {},
    Include        {},
    Define         {},
    Macro          {},
    PreCondit      {},
    Type           {gui = styles.bold},
    StorageClass   {},
    Structure      {},
    Typedef        {},
    Special        {},
    SpecialChar    {},
    Tag            {},
    Delimiter      {},
    SpecialComment {},
    Debug          {},
    Underlined     {gui = styles.underline},
    Ignore         {},
    Error          {},
    Todo           {},
    QuickFixLine   {fg = colours.light_gray, bg = colours.blue_darkest_gray},
    MatchParen     {fg = colours.light_gray, gui = styles.bold},
    Bold           {gui = styles.bold},
    Italic         {gui = styles.italic},
    CursorLine     {bg = colours.blue_darkest_gray},
  }
end)

return lush.merge({base_ui, theme})
