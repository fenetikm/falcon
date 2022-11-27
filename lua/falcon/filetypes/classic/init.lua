local lush = require('lush')

local filetypes = {
    'markdown',
}

local loaded_filetypes = {}
for index, filetype in pairs(filetypes) do
    loaded_filetypes[index] = require('falcon.filetypes.common.' .. filetype)
end

return lush.merge(loaded_filetypes)
