local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        graphqlVariable  {fg = colours.blue_gray},
        graphqlStructure {fg = colours.tan},
        graphqlName      {fg = colours.normal_gray},
        graphqlKeyword   {fg = colours.yellow},
        graphqlOperator  {fg = colours.orange},
    }
end)

return p
