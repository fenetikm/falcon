local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local zen = require('falcon.zen')

local p = lush(function()
    return {
        rstSections {zen.Keyword},
        rstCodeBlock {fg = colours.mid_gray_alt},
        rstDirective {zen.Keyword},
        rstHyperlinkTarget {fg = colours.blue_gray, gui = styles.underline},
        rstExDirective {fg = colours.blue_gray},
        rstInterpretedTextOrHyperlinkReference {zen.Comment}
    }
end)

return p
