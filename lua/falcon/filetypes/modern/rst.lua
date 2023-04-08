local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local modern = require('falcon.modern')

local p = lush(function()
    return {
        rstSections {modern.Keyword},
        rstCodeBlock {fg = colours.mid_gray_alt},
        rstDirective {modern.Keyword},
        rstHyperlinkTarget {fg = colours.blue_gray, gui = styles.underline},
        rstExDirective {fg = colours.blue_gray},
        rstInterpretedTextOrHyperlinkReference {modern.Comment}
    }
end)

return p
