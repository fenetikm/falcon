local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        elmTypeDef      {base.Type},
        elmType         {fg = colours.light_gray},
        elmTopLevelDecl {fg = colours.tan},
        elmAlias        {base.Identifier},
    }
end)

return p
