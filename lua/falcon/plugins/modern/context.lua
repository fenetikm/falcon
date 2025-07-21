local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        TreesitterContext {fg = colours.mid_gray_alt2, bg = 'NONE', gui = styles.bold},
        TreesitterContextBottom {fg = colours.mid_gray_alt2, bg = 'NONE', gui = styles.underdotted .. ',' .. styles.bold},
    }
end)

return p
