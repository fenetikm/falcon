local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        xmlEndTag          {fg = colours.blue_gray},
        xmlEqual           {base.Operator},
        xmlTagName         {fg = colours.light_blue_gray},
        xmlAttrib          {fg = colours.blue_gray},
        xmlTag             {fg = colours.normal_gray},
        xmlProcessingDelim {fg = colours.orange},
    }
end)

return p
