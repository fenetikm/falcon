local lush = require('lush')

local extras = {
    'diff',
    'gitcommit',
    'neovim',
    'netrw',
    'other',
    'vim',
}

local loaded_extras = {}
for index, extra in pairs(extras) do
    loaded_extras[index] = require('falcon.extras.common.' .. extra)
end

return lush.merge(loaded_extras)
