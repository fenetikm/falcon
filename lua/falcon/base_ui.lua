--@diagnostic disable: undefined-global

local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local settings = require('falcon.settings').get()

local windowBg = colours.bg
local windowBgNC = colours.inactive_bg
if not settings.inactive_bg then
  windowBgNC = colours.bg
end

-- not sure if this is working any more? needs testing.
if settings.transparent_bg then
  windowBg = 'NONE'
  windowBgNC = 'NONE'
end

-- TODO: fix NonText on inactive is not getting the right colour

local theme = lush(function()
  return {
    -- Base UI
    NonText      {fg = colours.dark_gray},
    ColorColumn  {bg = colours.inactive_bg},
    Conceal      { },
    lCursor      { },
    Cursor       {bg = colours.mid_gray},
    CursorIM     { },
    CursorColumn {bg = colours.blue_darkest_gray},
    CursorLine   {bg = colours.blue_dark_gray},
    CursorLineNr {fg = colours.normal_gray, bg = colours.blue_dark_gray},
    Directory    {fg = colours.blue_gray},
    DiffAdd      {bg = colours.off_green},
    DiffChange   {bg = colours.off_blue},
    DiffDelete   {bg = colours.off_red},
    DiffText     {bg = colours.off_green},
    ErrorMsg     {fg = colours.red},
    VertSplit    {fg = colours.mid_gray},
    Folded       {fg = colours.mid_gray, bg = colours.darker_gray},
    FoldColumn   {fg = colours.mid_gray, bg = colours.darker_gray},
    SignColumn   {fg = colours.blue_gray},
    IncSearch    {fg = colours.bg, bg = colours.br_blue, gui = styles.bold},
    LineNr       {fg = colours.mid_dark_gray},
    MatchParen   {fg = colours.br_tan, gui = styles.bold},
    ModeMsg      {},
    MoreMsg      {},
    PMenu        {fg = colours.mid_gray_alt, bg = colours.blue_dark_float},
    PMenuSel     {fg = colours.black, bg = colours.yellow},
    PmenuSbar    {fg = colours.normal_gray},
    PmenuThumb   {fg = colours.light_gray},
    Question     {fg = colours.light_gray},
    Search       {fg = colours.br_blue, gui = styles.underline .. ',' .. styles.bold},
    SpecialKey   {fg = colours.mid_gray},
    SpellBad     {bg = colours.purple_dark_gray, gui = styles.underline},
    SpellLocal   {bg = colours.purple_dark_gray, gui = styles.underline},
    SpellCap     {bg = colours.purple_dark_gray, gui = styles.undercurl},
    SpellRare    {bg = colours.purple_dark_gray, gui = styles.underline},
    StatusLine   {fg = colours.mid_gray, bg = colours.status},
    StatusLineNC {fg = colours.mid_gray, bg = colours.dark_gray},
    TabLine      {fg = colours.mid_gray, bg = colours.dark_gray},
    TabLineFill  {bg = colours.darker_gray},
    TabLineSel   {fg = colours.light_gray},
    Title        {fg = colours.tan},
    Visual       {fg = colours.light_gray, bg = colours.dark_indigo},
    VisualNOS    {},
    WarningMsg   {},
    WildMenu     {fg = colours.bg, bg = colours.yellow},
    EndOfBuffer  {NonText}, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    Substitute   { }, -- |:substitute| replacement text highlighting
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
  }
end)

return theme
