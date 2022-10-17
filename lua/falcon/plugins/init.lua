local lush = require('lush')

local plugins = {
    'ale',
    'blankline',
    'buftabline',
    'cleverf',
    'dashboard',
    'fugitive',
    'fzf',
    'gitsigns',
    'highlightedyank',
    'indentguides'
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
    loaded_plugins[index] = require('falcon.plugins.' .. plugin)
end

return lush.merge(loaded_plugins)
