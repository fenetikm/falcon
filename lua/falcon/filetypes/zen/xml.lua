local lush = require("lush")
local colours = require('falcon.colours')
local zen = require('falcon.zen')

local p = lush(function()
    return {
        xmlEndTag          {},
        xmlEqual           {zen.Operator},
        xmlTagName         {},
        xmlAttrib          {zen.Normal},
        xmlTag             {},
        xmlProcessingDelim {},
    }
end)

return p
