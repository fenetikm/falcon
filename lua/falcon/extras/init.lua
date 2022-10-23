local lush = require('lush')

local extras = {
    'diff',
    'gitcommit',
    'lsp',
    'neovim',
    'netrw',
    'other',
    'treesitter',
    'vim',
}

local loaded_extras = {}
for index, extra in pairs(extras) do
    loaded_extras[index] = require('falcon.extras.' .. extra)
end

return lush.merge(loaded_extras)
