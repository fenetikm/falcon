local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        fzf1 {fg = colours.tan, bg = colours.dark_gray},
        fzf2 {fg = colours.orange, bg = colours.dark_gray},
        fzf3 {fg = colours.orange, bg = colours.dark_gray},
    }
end)

return p
