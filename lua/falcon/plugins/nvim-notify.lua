local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        NotifyERRORBorder {fg = colours.mid_red},
        NotifyWARNBorder {fg = colours.mid_yellow},
        NotifyINFOBorder {fg = colours.mid_green},
        NotifyDEBUGBorder {fg = colours.mid_gray},
        NotifyTRACEBorder {fg = colours.dark_tan},
        NotifyERRORIcon {fg = colours.red},
        NotifyWARNIcon {fg = colours.yellow},
        NotifyINFOIcon {fg = colours.green},
        NotifyDEBUGIcon {fg = colours.light_gray},
        NotifyTRACEIcon {fg = colours.tan},
        NotifyERRORTitle {fg = colours.red},
        NotifyWARNTitle {fg = colours.yellow},
        NotifyINFOTitle {fg = colours.green},
        NotifyDEBUGTitle {fg = colours.light_gray},
        NotifyTRACETitle {fg = colours.tan},
        NotifyERRORBody {base.Normal},
        NotifyWARNBody {base.Normal},
        NotifyINFOBody {base.Normal},
        NotifyDEBUGBody {base.Normal},
        NotifyTRACEBody {base.Normal},
    }
end)

return p
