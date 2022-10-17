local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        SignatureMarkText {fg = colours.blue_gray},
    }
end)

return p
