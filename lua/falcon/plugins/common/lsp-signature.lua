local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        LspSignatureActiveParameter {fg = colours.red, gui = styles.italic},
        LspSignatureSpecial {fg = colours.green, gui = styles.underline},
    }
end)

return p
