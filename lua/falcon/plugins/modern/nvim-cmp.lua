local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        CmpGhostText {fg = colours.darker_bluer_gray.darken(25)},
    }
end)

return p
