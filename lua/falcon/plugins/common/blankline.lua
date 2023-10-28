local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        IndentBlanklineChar    {fg = colours.blue_dark_gray},
        IndentBlanklineIndent1 {fg = colours.blue_dark_gray},
        IndentBlanklineIndent2 {fg = colours.dark_gray},
        IblBlankline           {fg = colours.blue_dark_gray},
        IblWhitespace          {fg = colours.blue_dark_gray},
    }
end)

return p
