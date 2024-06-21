--@diagnostic disable: undefined-global

local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local settings = require('falcon.settings').get()
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
    Boolean        {fg = colours.blue_gray},
    Number         {fg = colours.blue_gray},
    Float          {fg = colours.blue_gray},
    Identifier     {},
    Function       {gui = styles.bold},
    Conditional    {gui = styles.italic},
    Statement      {},
    Exception      {},
    Repeat         {},
    Label          {},
    Operator       {fg = colours.darker_tanner},
    Keyword        {gui = styles.bold},
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

    -- Specific overrides of base
    CursorLine     {bg = colours.blue_darkest_gray},
    SpellBad       {sp = colours.red, gui = styles.undercurl },
    SpellLocal     {sp = colours.mid_yellow, gui = styles.underdotted },
    SpellCap       {sp = colours.mid_yellow, gui = styles.underdotted },
    SpellRare      {sp = colours.mid_yellow, gui = styles.underdotted },
    Folded         {fg = colours.mid_gray, bg = colours.darkest_gray},
    FoldColumn     {fg = colours.mid_gray, bg = colours.darkest_gray},
    IncSearch      {fg = colours.light_gray, gui = styles.bold},
    Search         {fg = colours.light_gray, gui = styles.bold .. ',' .. styles.underline},
    CurSearch      {Search},
    PMenuSel       {fg = colours.light_gray, gui = styles.bold},
  }
end)

return lush.merge({base_ui, theme})
