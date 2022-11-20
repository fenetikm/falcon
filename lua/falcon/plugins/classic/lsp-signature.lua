local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        LspSignatureActiveParameter {fg = colours.blue_gray, gui = styles.italic},
    }
end)

return p
