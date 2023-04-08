local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        TelescopeBorder         {fg = colours.dark_gray, bg = colours.blue_dark_float},
        TelescopeTitle          {fg = colours.mid_gray_alt, bg = colours.blue_dark_float},
        TelescopeMatching       {fg = colours.light_gray, bg = colours.blue_dark_float, gui = styles.bold},
        TelescopePromptPrefix   {fg = colours.mid_gray_alt2, bg = colours.blue_dark_float},
        TelescopeSelection      {fg = colours.mid_gray_alt2, bg = colours.blue_dark_float},
        TelescopeSelectionCaret {fg = colours.darker_tanner, bg = colours.blue_dark_float},
        TelescopeMultiSelection {fg = colours.light_gray, bg = colours.blue_dark_float, gui = styles.bold},
        TelescopeMultiIcon      {fg = colours.mid_gray_alt2},
        TelescopeNormal         {fg = colours.mid_gray, bg = colours.blue_dark_float},
        TelescopePreviewNormal  {TelescopeNormal},
        TelescopePromptNormal   {TelescopeNormal},
        TelescopeResultsNormal  {TelescopeNormal},
        TelescopePromptCounter  {fg = colours.blue_gray},
    }
end)

return p
