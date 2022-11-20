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

local theme = lush(function()
  return {
    -- Base syntax
    Normal         {fg = colours.normal_gray, bg = windowBg},
    NormalNC       {fg = colours.normal_gray, bg = windowBgNC},
    Comment        {fg = colours.mid_gray, gui = styles.italic_comments},
    Constant       {fg = colours.normal_gray, gui = styles.bold},
    String         {fg = colours.light_blue_gray},
    Character      {String},
    Boolean        {fg = colours.normal_gray, gui = styles.italic},
    Number         {fg = colours.normal_gray},
    Float          {Number},
    Identifier     {fg = colours.blue_gray},
    Function       {fg = colours.yellow},
    Conditional    {fg = colours.yellow},
    Statement      {fg = colours.blue_gray},
    Exception      {Statement},
    Repeat         {Statement},
    Label          {Statement},
    Operator       {fg = colours.orange},
    Keyword        {fg = colours.yellow},
    PreProc        {fg = colours.tan},
    Include        {PreProc},
    Define         {PreProc},
    Macro          {PreProc},
    PreCondit      {PreProc},
    Type           {fg = colours.light_gray},
    StorageClass   {Type},
    Structure      {Type},
    Typedef        {Type},
    Special        {fg = colours.orange},
    SpecialChar    {Special},
    Tag            {Special},
    Delimiter      {fg = colours.light_gray},
    SpecialComment {Special},
    Debug          {Special},
    Underlined     {fg = colours.blue_gray, gui = styles.underline},
    Ignore         {},
    Error          {},
    Todo           {fg = colours.bg, bg = colours.tan, gui = styles.italic},
    QuickFixLine   {fg = colours.br_blue, bg = colours.dark_gray},
    Bold           {gui = styles.bold},
    Italic         {gui = styles.italic},
  }
end)

return lush.merge({base_ui, theme})
