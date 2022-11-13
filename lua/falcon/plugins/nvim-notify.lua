local lush = require('lush')
local colours = require('falcon.colours')
local base_ui = require('falcon.base_ui')

local p = lush(function()
    return {
        NotifyERRORBorder {fg = colours.mid_red},
        NotifyWARNBorder  {fg = colours.mid_yellow},
        NotifyINFOBorder  {fg = colours.mid_green},
        NotifyDEBUGBorder {fg = colours.mid_gray},
        NotifyTRACEBorder {fg = colours.dark_tan},
        NotifyERRORIcon   {fg = colours.red},
        NotifyWARNIcon    {fg = colours.yellow},
        NotifyINFOIcon    {fg = colours.green},
        NotifyDEBUGIcon   {fg = colours.light_gray},
        NotifyTRACEIcon   {fg = colours.tan},
        NotifyERRORTitle  {fg = colours.red},
        NotifyWARNTitle   {fg = colours.yellow},
        NotifyINFOTitle   {fg = colours.green},
        NotifyDEBUGTitle  {fg = colours.light_gray},
        NotifyTRACETitle  {fg = colours.tan},
        NotifyERRORBody   {base_ui.Normal},
        NotifyWARNBody    {base_ui.Normal},
        NotifyINFOBody    {base_ui.Normal},
        NotifyDEBUGBody   {base_ui.Normal},
        NotifyTRACEBody   {base_ui.Normal},
    }
end)

return p
