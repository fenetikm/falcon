local lush = require('lush')
local colours = require('falcon.colours')
local base_ui = require('falcon.base_ui')

local p = lush(function()
    return {
        DapUIVariable          {fg = colours.blue_gray},
        DapUIValue             {fg = colours.red},
    }
end)

return p
