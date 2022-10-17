local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        DashboardFooter {fg = colours.yellow, gui = styles.bold},
        DashboardHeader {fg = colours.indigo},
        DashboardCenter {fg = colours.normal_gray},
        DashboardShortCut {fg = colours.mid_gray},
    }
end)

return p
