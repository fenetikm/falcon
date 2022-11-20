local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        javaRepeat    {fg = colours.yellow},
        javaStatement {javaRepeat},
    }
end)

return p
