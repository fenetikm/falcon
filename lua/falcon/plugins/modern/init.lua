local lush = require('lush')

local plugins = {
  'cleverf',
  'context',
  'dapui',
  'flash',
  'fzf-lua',
  'markview',
  'neogit',
  'nvim-cmp',
  'nvim-tree',
  'oil',
  'snacks',
  'telescope',
  'trouble',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
  loaded_plugins[index] = require('falcon.plugins.modern.' .. plugin)
end

return lush.merge(loaded_plugins)
