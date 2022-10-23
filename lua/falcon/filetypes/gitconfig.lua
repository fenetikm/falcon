local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        gitconfigSection  {fg = colours.yellow},
        gitconfigVariable {fg = colours.blue_gray},
    }
end)

return p
