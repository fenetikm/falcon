local lush = require('lush')

local plugins = {
  'blankline',
  'dap',
  'diffview',
  'gitsigns',
  'highlightedyank',
  'nvim-coverage',
  'vim-signature',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
  loaded_plugins[index] = require('falcon.plugins.common.' .. plugin)
end

return lush.merge(loaded_plugins)
