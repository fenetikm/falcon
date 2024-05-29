local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        DapBreakpoint          {fg = colours.blue_gray},
        DapBreakpointCondition {fg = colours.blue_gray},
        DapStopped             {fg = colours.white},
    }
end)

return p
