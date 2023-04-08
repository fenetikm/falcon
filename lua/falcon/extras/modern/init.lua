local lush = require('lush')

local extras = {
    'lsp',
    'treesitter',
}

local loaded_extras = {}
for index, extra in pairs(extras) do
    loaded_extras[index] = require('falcon.extras.modern.' .. extra)
end

return lush.merge(loaded_extras)
