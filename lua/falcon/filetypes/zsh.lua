local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        zshCommands        {fg = colours.yellow},
        zshBrackets        {base.Delimiter},
        zshOptStart        {fg = colours.orange},
        zshVariableDef     {fg = colours.blue_gray},
        zshTypes           {base.Type},
        zshKeyword         {base.Keyword},
        zshStringDelimiter {base.Delimiter},
        zshDelimiter       {base.Delimiter},
        zshParentheses     {base.Delimiter},
    }
end)

return p
