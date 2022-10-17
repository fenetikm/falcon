local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        CleverFDefaultLabel {fg = colours.br_blue, gui = styles.underline}
    }
end)

return p
