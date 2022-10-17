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
    'indentguides',
    'lsp-signature',
    'nerdtree',
    'nvim-cmp',
    'nvim-notify',
    'nvim-tree',
    'plug',
    'sneak',
    'startify',
    'tagbar',
    'telescope',
    'ultisnips',
    'vdebug',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
    loaded_plugins[index] = require('falcon.plugins.' .. plugin)
end

return lush.merge(loaded_plugins)
