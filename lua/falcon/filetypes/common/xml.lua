local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        xmlEndTag          {fg = colours.blue_gray},
        xmlEqual           {classic.Operator},
        xmlTagName         {fg = colours.light_blue_gray},
        xmlAttrib          {fg = colours.blue_gray},
        xmlTag             {fg = colours.normal_gray},
        xmlProcessingDelim {fg = colours.orange},
    }
end)

return p
