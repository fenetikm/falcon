local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        netrwClassify {fg = colours.normal_gray},
    }
end)

return p
