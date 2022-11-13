local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        zshCommands        {fg = colours.yellow},
        zshBrackets        {classic.Delimiter},
        zshOptStart        {fg = colours.orange},
        zshVariableDef     {fg = colours.blue_gray},
        zshTypes           {classic.Type},
        zshKeyword         {classic.Keyword},
        zshStringDelimiter {classic.Delimiter},
        zshDelimiter       {classic.Delimiter},
        zshParentheses     {classic.Delimiter},
    }
end)

return p
