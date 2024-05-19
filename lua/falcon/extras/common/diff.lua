local lush = require("lush")
local colours = require('falcon.colours')
local base_ui = require('falcon.base_ui')

local p = lush(function()
    return {
        diffAdded   { fg = colours.light_gray, bg = colours.off_green},
        diffRemoved { fg = colours.light_gray, bg = colours.off_red},
        diffFile    { base_ui.Title},
        diffLine    { fg = colours.light_blue_gray},
        diffSubname { fg = colours.light_gray},
    }
end)

return p
