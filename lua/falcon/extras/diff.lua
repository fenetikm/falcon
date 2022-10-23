local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        diffAdded {fg = colours.light_gray, bg = colours.off_green},
        diffRemoved {fg = colours.light_gray, bg = colours.off_red},
        diffFile {base.Title},
        diffLine {fg = colours.light_blue_gray},
        diffSubname {fg = colours.light_gray},
    }
end)

return p
