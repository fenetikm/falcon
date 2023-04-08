local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')

local p = lush(function()
    return {
        xmlEndTag          {},
        xmlEqual           {modern.Operator},
        xmlTagName         {},
        xmlAttrib          {modern.Normal},
        xmlTag             {},
        xmlProcessingDelim {},
    }
end)

return p
