-- gitsigns highlights
local lush = require("lush")
local base = require("falcon.theme")

local theme = {}

theme = lush(function()
return {
    GitSignsAdd {base.ApprenticeGreenSign},
    GitSignsChange {base.ApprenticeBlueSign},
    GitSignsDelete {base.ApprenticeRedSign},
}
end)

return theme
