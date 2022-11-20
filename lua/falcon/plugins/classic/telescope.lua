local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        TelescopeBorder         {fg = colours.dark_gray, bg = colours.blue_dark_float},
        TelescopeTitle          {fg = colours.mid_gray_alt, bg = colours.blue_dark_float},
        TelescopeMatching       {fg = colours.yellow, bg = colours.blue_dark_float},
        TelescopePromptPrefix   {fg = colours.mid_gray_alt, bg = colours.blue_dark_float},
        TelescopeSelection      {fg = colours.light_gray, bg = colours.blue_dark_float},
        TelescopeSelectionCaret {fg = colours.orange, bg = colours.blue_dark_float},
        TelescopeMultiSelection {fg = colours.light_gray, bg = colours.blue_dark_float},
        TelescopeNormal         {fg = colours.mid_gray, bg = colours.blue_dark_float},
        TelescopePreviewNormal  {fg = colours.normal_gray, bg = colours.blue_dark_float2},
    }
end)

return p
