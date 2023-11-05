local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        FlashMatch {fg = colours.white},
        FlashCurrent {fg = colours.white, gui = styles.bold},
        FlashLabel {bg = colours.white, fg = colours.bg, gui = styles.bold},
    }
end)

return p
