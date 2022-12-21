local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        CleverFDefaultLabel {fg = colours.yellow}
    }
end)

return p
