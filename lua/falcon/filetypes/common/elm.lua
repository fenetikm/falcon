local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        elmTypeDef      {classic.Type},
        elmType         {fg = colours.light_gray},
        elmTopLevelDecl {fg = colours.tan},
        elmAlias        {classic.Identifier},
    }
end)

return p
