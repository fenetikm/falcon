local lush = require('lush')

local filetypes = {
    'markdown',
    'rst',
    'yaml',
    'xml'
}

local loaded_filetypes = {}
for index, filetype in pairs(filetypes) do
    loaded_filetypes[index] = require('falcon.filetypes.zen.' .. filetype)
end

return lush.merge(loaded_filetypes)
