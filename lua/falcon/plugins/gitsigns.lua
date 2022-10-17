-- gitsigns highlights
local lush = require("lush")
local base = require("falcon.theme")
local colours = require('falcon.colours')

local theme = {}

theme = lush(function()
return {
    GitSignsAdd {fg = colours.green},
    GitSignsChange {fg = colours.yellow},
    GitSignsDelete {fg = colours.red},
    GitSignsChangeDelete {fg = colours.orange},
}
end)

return theme
