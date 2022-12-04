--@diagnostic disable: undefined-global
--
print ('zen variation')

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
    NormalNC       {fg = colours.mig_gray_alt2, bg = windowBgNC},
    Comment        {fg = colours.darker_blue_gray, gui = styles.italic_comments},
    Constant       {},
    String         {fg = colours.light_blue_gray},
    Character      {},
    Boolean        {},
    Number         {},
    Float          {},
    Identifier     {},
    Function       {gui = stylies.bold},
    Conditional    {},
    Statement      {},
    Exception      {},
    Repeat         {},
    Label          {},
    Operator       {fg = colours.darker_orange},
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
    QuickFixLine   {},
    Bold           {gui = styles.bold},
    Italic         {gui = styles.italic},
  }
end)

return lush.merge({base_ui, theme})