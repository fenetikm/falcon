local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        AspVBSVariableSimple {classic.Identifier},
        AspVBSStatement      {classic.Keyword},
    }
end)

return p
