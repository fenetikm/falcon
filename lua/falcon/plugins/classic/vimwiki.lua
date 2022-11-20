local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        VimwikiLink       {classic.Underlined},
        VimwikiHeaderChar {classic.Delimiter},
        VimwikiHeader1    {fg = colours.br_blue, gui = styles.bold},
        VimwikiHeader2    {fg = colours.br_blue},
        VimwikiHeader3    {VimwikiHeader2},
        VimwikiHeader4    {VimwikiHeader2},
        VimwikiHeader5    {VimwikiHeader2},
        VimwikiHeader6    {VimwikiHeader2},
        VimwikiList       {classic.Delimiter},
        VimwikiPre        {fg = colours.mid_gray_alt},
        VimwikiCode       {fg = colours.mid_gray_alt},
        VimwikiCodeChar   {fg = colours.orange},
        VimwikiMarkers    {fg = colours.tan},
        VimwikiBold       {classic.Bold},
        VimwikiItalic     {classic.Italic},
    }
end)

return p
