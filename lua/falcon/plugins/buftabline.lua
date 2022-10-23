local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        BufTabLineCurrent {fg = colours.normal_gray, bg = colours.mid_gray},
        BufTabLineActive  {fg = colours.light_gray, bg = colours.dark_gray},
        BufTabLineHidden  {fg = colours.mid_gray, bg = colours.dark_gray},
        BufTabLineFill    {bg = colours.darker_gray},
    }
end)

return p
