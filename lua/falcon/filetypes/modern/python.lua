local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')

--   - @string.documentation.python links to String   priority: 100   language: python

local p = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    pythonStatement { fg = colours.yellow },     -- Statement
    pythonConditional {},                        -- Conditional
    pythonRepeat { fg = colours.yellow },        -- Repeat
    pythonOperator {},                           -- Operator
    pythonException {},                          -- Exception
    pythonInclude {},                            -- Include
    pythonDecorator {},                          -- Define
    pythonFunction { fg = colours.normal_gray }, -- Function
    pythonComment {},                            -- Comment
    pythonTodo {},                               -- Todo
    pythonString {},                             -- String
    pythonRawString {},                          -- String
    pythonQuotes {},                             -- String
    pythonTripleQuotes {},                       -- pythonQuotes
    pythonEscape {},                             -- Special
    pythonNumber {},                             -- Number
    pythonBuiltin {},                            -- Function
    pythonExceptions {},                         -- Structure
    pythonSpaceError {},                         -- Error
    pythonDoctest {},                            -- Special
    pythonDoctestValue {},                       -- Define
    pythonExClass { fg = colours.tan },
    pythonBuiltinObj { fg = colours.yellow },
    pythonDot { fg = colours.orange },
    pythonBuiltinFunc { fg = colours.tan },
    pythonNone { modern.Boolean },
    sym('@string.documentation.python') { modern.Comment }
  }
end)

return p
