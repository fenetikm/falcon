local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        DbgBreakptLine {bg = colours.off_blue},
        DbgBreakptSign {fg = colours.off_blue},
        DbgCurrentLine {bg = colours.off_red},
        DbgCurrentSign {fg = colours.off_red},
    }
end)

return p
