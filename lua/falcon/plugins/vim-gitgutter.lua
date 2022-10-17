local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        GitGutterAdd {fg = colours.green},
        GitGutterChange {fg = colours.yellow},
        GitGutterDelete {fg = colours.red},
        GitGutterChangeDelete {fg = colours.orange},
    }
end)

return p
