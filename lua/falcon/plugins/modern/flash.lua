local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        FlashMatch {fg = colours.white},
        FlashCurrent {fg = colours.white, gui = styles.bold},
        FlashLabel {fg = colours.white, gui = styles.bold .. ',' .. styles.underline },
    }
end)

return p
