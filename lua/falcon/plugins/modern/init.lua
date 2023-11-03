local lush = require('lush')

local plugins = {
  'telescope',
  'cleverf',
  'nvim-tree',
  'nvim-cmp',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
  loaded_plugins[index] = require('falcon.plugins.modern.' .. plugin)
end

return lush.merge(loaded_plugins)
