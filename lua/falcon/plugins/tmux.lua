local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        tmuxCmds {fg = colours.yellow},
        tmuxOptsSet {fg = colours.blue_gray},
        tmuxOptions {fg = colours.orange},
        tmuxOptsSetw {fg = colours.blue_gray},
    }
end)

return p
