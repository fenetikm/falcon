local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        TSKeyword         {base.Keyword},
        TSVariable        {base.Identifier},
        TSMethod          {fg = colours.normal_gray},
        TSVariableBuiltin {base.Type},
        TSFunction        {base.Function},
        TSOperator        {base.Operator},
        TSConstructor     {fg = colours.normal_gray, gui = styles.bold},
        TSException       {base.Keyword},
        TSConstant        {base.Constant},
        TSConstBuiltin    {base.Boolean},
        TSError           {fg = colours.yellow},
        TSKeywordFunction {fg = colours.tan},
    }
end)

return p
