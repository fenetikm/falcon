local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        snipSnippetHeaderKeyword    {fg = colours.yellow},
        snipSnippetFooterKeyword    {snipSnippetHeaderKeyword},
        snipTabStop                 {classic.Identifier},
        snipTabStopDefault          {fg = colours.blue_gray, gui = styles.italic},
        snipMirror                  {snipTabStop},
        snipSnippetTrigger          {classic.String},
        snipSnippetDocContextString {classic.Comment},
    }
end)

return p
