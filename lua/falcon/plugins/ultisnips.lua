local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local base = require('falcon.base')

local p = lush(function()
    return {
        snipSnippetHeaderKeyword    {fg = colours.yellow},
        snipSnippetFooterKeyword    {snipSnippetHeaderKeyword},
        snipTabStop                 {base.Identifier},
        snipTabStopDefault          {fg = colours.blue_gray, gui = styles.italic},
        snipMirror                  {snipTabStop},
        snipSnippetTrigger          {base.String},
        snipSnippetDocContextString {base.Comment},
    }
end)

return p
