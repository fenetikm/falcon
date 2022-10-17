local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        StartifySlash {fg = colours.mid_gray},
        StartifyPath {fg = colours.mid_gray},
        StartifyHeader {fg = colours.indigo},
        StartifyFile {fg = colours.normal_gray},
        StartifySection {fg = colours.yellow},
        StartifyNumber {fg = colours.blue_gray},
    }
end)

return p
