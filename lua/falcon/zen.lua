--@diagnostic disable: undefined-global
--
print ('zen variation')

local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local settings = require('falcon.settings')
local base_ui = require('falcon.base_ui')

local theme = lush(function()
  return {
    -- Base syntax
    Comment        {fg = colours.dark_tan, gui = styles.italic_comments},
    Constant       {fg = colours.normal_gray, gui = styles.bold},
    String         {fg = colours.light_blue_gray},
    Character      {String},
    Boolean        {fg = colours.normal_gray, gui = styles.italic},
    Number         {fg = colours.normal_gray},
    Float          {Number},
    Identifier     {fg = colours.blue_gray},
    Function       {fg = colours.tan},
    Conditional    {fg = colours.tan},
    Statement      {fg = colours.blue_gray},
    Exception      {Statement},
    Repeat         {Statement},
    Label          {Statement},
    Operator       {fg = colours.tan},
    Keyword        {fg = colours.normal_gray, gui = styles.bold},
    PreProc        {fg = colours.tan},
    Include        {PreProc},
    Define         {PreProc},
    Macro          {PreProc},
    PreCondit      {PreProc},
    Type           {fg = colours.light_gray},
    StorageClass   {Type},
    Structure      {Type},
    Typedef        {Type},
    Special        {fg = colours.light_gray},
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
