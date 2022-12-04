local lush = require('lush')

local plugins = {
    'telescope',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
    loaded_plugins[index] = require('falcon.plugins.zen.' .. plugin)
end

return lush.merge(loaded_plugins)
