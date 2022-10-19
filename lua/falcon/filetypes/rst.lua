local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        rstSections {fg = colours.br_blue},
        rstCodeBlock {fg = colours.mid_gray_alt},
        rstDirective {fg = colours.orange},
        rstHyperlinkTarget {fg = colours.blue_gray, gui = styles.underline},
        rstExDirective {fg = colours.blue_gray},
    }
end)

return p
