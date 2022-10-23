local lush = require('lush')
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        titleEntry  {fg = colours.yellow},
        diffRemoved {base.DiffDelete},
        diffAdded   {base.DiffAdd},
    }
end)

return p
