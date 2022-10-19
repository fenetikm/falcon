local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        AspVBSVariableSimple {base.Identifier},
        AspVBSStatement      {base.Keyword},
    }
end)

return p
