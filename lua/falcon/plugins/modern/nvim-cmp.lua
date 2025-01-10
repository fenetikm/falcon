local lush = require('lush')
local colours = require('falcon.colours')
local modern = require('falcon.modern')

local p = lush(function()
    return {
        CmpGhostText {fg = colours.darker_bluer_gray.darken(25)},
        CmpItemKind {modern.Comment},
        CmpItemMenu {modern.Comment},
    }
end)

return p
