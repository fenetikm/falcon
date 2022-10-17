local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        CmpItemAbbr {fg = colours.mid_gray_alt},
        CmpItemAbbrDeprecated {fg = colours.mid_gray_alt, gui = styles.italic},
        CmpItemAbbrMatch {fg = colours.normal_gray},
        CmpItemAbbrMatchFuzzy {fg = colours.normal_gray, gui = styles.italic},
        CmpItemKind {fg = colours.mid_dark_gray},
        CmpItemKindDefault {fg = colours.mid_dark_gray},
        CmpItemMenu {fg = colours.mid_gray},
    }
end)

return p
