local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        GitSignsAdd {fg = colours.green},
        GitSignsChange {fg = colours.yellow},
        GitSignsDelete {fg = colours.red},
        GitSignsChangeDelete {fg = colours.orange},
    }
end)

return p
