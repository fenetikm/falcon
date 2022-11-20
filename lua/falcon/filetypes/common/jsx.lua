local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        xmlEqual   {fg = colours.yellow},
        xmlEndTag  {fg = colours.yellow},
        xmlTagN    {fg = colours.blue_gray},
        xmlTagName {fg = colours.blue_gray},
    }
end)

return p
