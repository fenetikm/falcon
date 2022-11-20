local lush = require('lush')
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        titleEntry  {fg = colours.yellow},
        diffRemoved {classic.DiffDelete},
        diffAdded   {classic.DiffAdd},
    }
end)

return p
