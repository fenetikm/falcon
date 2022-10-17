local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local base = require('falcon.base')

local p = lush(function()
    return {
        VimwikiLink {base.Underlined},
        VimwikiHeaderChar {base.Delimiter},
        VimwikiHeader1 {fg = colours.br_blue, gui = styles.bold},
        VimwikiHeader2 {fg = colours.br_blue},
        VimwikiHeader3 {VimwikiHeader2},
        VimwikiHeader4 {VimwikiHeader2},
        VimwikiHeader5 {VimwikiHeader2},
        VimwikiHeader6 {VimwikiHeader2},
        VimwikiList {base.Delimiter},
        VimwikiPre {fg = colours.mid_gray_alt},
        VimwikiCode {fg = colours.mid_gray_alt},
        VimwikiCodeChar {fg = colours.orange},
        VimwikiMarkers {fg = colours.tan},
        VimwikiBold {base.Bold},
        VimwikiItalic {base.Italic},
    }
end)

return p
