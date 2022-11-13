local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        pythonStatement    {fg = colours.yellow}, -- Statement
        pythonConditional  {}, -- Conditional
        pythonRepeat       {fg = colours.yellow}, -- Repeat
        pythonOperator     {}, -- Operator
        pythonException    {}, -- Exception
        pythonInclude      {}, -- Include
        pythonDecorator    {}, -- Define
        pythonFunction     {fg = colours.normal_gray}, -- Function
        pythonComment      {}, -- Comment
        pythonTodo         {}, -- Todo
        pythonString       {}, -- String
        pythonRawString    {}, -- String
        pythonQuotes       {}, -- String
        pythonTripleQuotes {}, -- pythonQuotes
        pythonEscape       {}, -- Special
        pythonNumber       {}, -- Number
        pythonBuiltin      {}, -- Function
        pythonExceptions   {}, -- Structure
        pythonSpaceError   {}, -- Error
        pythonDoctest      {}, -- Special
        pythonDoctestValue {}, -- Define
        pythonExClass      {fg = colours.tan},
        pythonBuiltinObj   {fg = colours.yellow},
        pythonDot          {fg = colours.orange},
        pythonBuiltinFunc  {fg = colours.tan},
        pythonNone         {classic.Boolean},
    }
end)

return p
