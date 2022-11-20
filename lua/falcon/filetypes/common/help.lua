local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        helpIgnore         {}, -- Ignore
        helpHyperTextJump  {fg = colours.blue_gray, gui = styles.underline}, -- Identifier
        helpBar            {}, -- Ignore
        helpBacktick       {}, -- Ignore
        helpStar           {fg = colours.br_blue}, -- Ignore
        helpHyperTextEntry {}, -- String
        helpHeadline       {fg = colours.yellow}, -- Statement
        helpHeader         {}, -- PreProc
        helpSectionDelim   {fg = colours.tan}, -- PreProc
        helpVim            {}, -- Identifier
        helpCommand        {}, -- Comment
        helpExample        {}, -- Comment
        helpOption         {fg = colours.tan}, -- Type
        helpSpecial        {}, -- Special
        helpNote           {}, -- Todo
        helpComment        {}, -- Comment
        helpConstant       {}, -- Constant
        helpString         {}, -- String
        helpCharacter      {}, -- Character
        helpNumber         {}, -- Number
        helpBoolean        {}, -- Boolean
        helpFloat          {}, -- Float
        helpIdentifier     {}, -- Identifier
        helpFunction       {}, -- Function
        helpStatement      {}, -- Statement
        helpConditional    {}, -- Conditional
        helpRepeat         {}, -- Repeat
        helpLabel          {}, -- Label
        helpOperator       {}, -- Operator
        helpKeyword        {}, -- Keyword
        helpException      {}, -- Exception
        helpPreProc        {}, -- PreProc
        helpInclude        {}, -- Include
        helpDefine         {}, -- Define
        helpMacro          {}, -- Macro
        helpPreCondit      {}, -- PreCondit
        helpType           {}, -- Type
        helpStorageClass   {}, -- StorageClass
        helpStructure      {}, -- Structure
        helpTypedef        {}, -- Typedef
        helpSpecialChar    {}, -- SpecialChar
        helpTag            {}, -- Tag
        helpDelimiter      {}, -- Delimiter
        helpSpecialComment {}, -- SpecialComment
        helpDebug          {}, -- Debug
        helpUnderlined     {}, -- Underlined
        helpError          {}, -- Error
        helpTodo           {}, -- Todo
        helpURL            {}, -- String
    }
end)

return p
