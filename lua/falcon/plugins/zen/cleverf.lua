local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        CleverFDefaultLabel {fg = colours.light_gray, gui = styles.underline .. ',' .. styles.bold}
    }
end)

return p
