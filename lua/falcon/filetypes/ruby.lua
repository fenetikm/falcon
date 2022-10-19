local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        rubyClass                  {fg = colours.light_gray}, -- rubyDefine
        rubyClassName              {base.Normal},
        rubyModule                 {fg = colours.light_gray}, -- rubyDefine
        rubyModuleName             {base.Normal},
        rubyMethodExceptional      {}, -- rubyDefine
        rubyDefine                 {fg = colours.yellow}, -- Define
        rubyFunction               {fg = colours.normal_gray}, -- Function
        rubyConditional            {}, -- Conditional
        rubyConditionalModifier    {}, -- rubyConditional
        rubyExceptional            {}, -- rubyConditional
        rubyRepeat                 {}, -- Repeat
        rubyRepeatModifier         {}, -- rubyRepeat
        rubyOptionalDo             {}, -- rubyRepeat
        rubyControl                {fg = colours.yellow}, -- Statement
        rubyInclude                {}, -- Include
        rubyInteger                {}, -- Number
        rubyASCIICode              {}, -- Character
        rubyFloat                  {}, -- Float
        rubyBoolean                {}, -- Boolean
        rubyException              {}, -- Exception
        rubyIdentifier             {}, -- Identifier
        rubyClassVariable          {}, -- rubyIdentifier
        rubyConstant               {fg = colours.light_blue_gray}, -- Type
        rubyGlobalVariable         {fg = colours.lavender, gui = styles.bold}, -- rubyIdentifier
        rubyBlockParameter         {}, -- rubyIdentifier
        rubyInstanceVariable       {}, -- rubyIdentifier
        rubyPredefinedIdentifier   {}, -- rubyIdentifier
        rubyPredefinedConstant     {}, -- rubyPredefinedIdentifier
        rubyPredefinedVariable     {}, -- rubyPredefinedIdentifier
        rubySymbol                 {fg = colours.blue_gray}, -- Constant
        rubyKeyword                {}, -- Keyword
        rubyOperator               {}, -- Operator
        rubyBeginEnd               {}, -- Statement
        rubyAccess                 {}, -- Statement
        rubyAttribute              {}, -- Statement
        rubyEval                   {}, -- Statement
        rubyPseudoVariable         {}, -- Constant
        rubyComment                {}, -- Comment
        rubyData                   {}, -- Comment
        rubyDataDirective          {}, -- Delimiter
        rubyDocumentation          {}, -- Comment
        rubyTodo                   {}, -- Todo
        rubyQuoteEscape            {}, -- rubyStringEscape
        rubyStringEscape           {}, -- Special
        rubyInterpolationDelimiter {}, -- Delimiter
        rubyNoInterpolation        {}, -- rubyString
        rubySharpBang              {}, -- PreProc
        rubyRegexpDelimiter        {}, -- rubyStringDelimiter
        rubySymbolDelimiter        {}, -- rubyStringDelimiter
        rubyStringDelimiter        {}, -- Delimiter
        rubyHeredoc                {}, -- rubyString
        rubyString                 {}, -- String
        rubyRegexpEscape           {}, -- rubyRegexpSpecial
        rubyRegexpQuantifier       {}, -- rubyRegexpSpecial
        rubyRegexpAnchor           {}, -- rubyRegexpSpecial
        rubyRegexpDot              {}, -- rubyRegexpCharClass
        rubyRegexpCharClass        {}, -- rubyRegexpSpecial
        rubyRegexpSpecial          {}, -- Special
        rubyRegexpComment          {}, -- Comment
        rubyRegexp                 {}, -- rubyString
        rubyInvalidVariable        {}, -- Error
        rubyError                  {}, -- Error
        rubySpaceError             {}, -- rubyError
        rubyArrayDelimiter         {base.Delimiter},
        rubyBlockParameterList     {fg = colours.blue_gray},
        rubyCurlyBlockDelimiter    {base.Delimiter},
        rubyDoBlock                {fg = colours.yellow},
        rubyLocalVariableOrMethod  {fg = colours.blue_gray},
        rubyMethodBlock            {fg = colours.tan},
        rubyHeredocDelimiter       {fg = colours.orange},
        rubyCurlyBlock             {fg = colours.orange},
    }
end)

return p
