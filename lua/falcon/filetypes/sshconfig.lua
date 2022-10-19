local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        sshconfigKeyword {fg = colours.blue_gray},
        sshconfigMatch {fg = colours.blue_gray},
        sshconfigYesNo {fg = colours.red},
        sshconfigLogLevel {fg = colours.tan},
    }
end)

return p
