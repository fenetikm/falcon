local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        FloatBorder      {fg = colours.dark_gray, bg = colours.blue_dark_float2},
        NormalFloat      {bg = colours.blue_dark_float2}, -- Normal text in floating windows. NormalNC     { }, -- normal text in non-current windows
        TermCursor       { }, -- Cursor in a focused terminal
        TermCursorNC     { }, -- Cursor in an unfocused terminal
        StatusLineTermNC { }, -- Status line in an unfocused terminal
        StatusLineNC     { }, -- Status line in an unfocused windows
        --               healthcheck
        healthSuccess    {fg = colours.bg, bg = colours.green},
        healthError      {fg = colours.bg, bg = colours.red},
    }
end)

return p
