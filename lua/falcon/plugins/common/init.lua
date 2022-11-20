local lush = require('lush')

local plugins = {
    'blankline',
    'gitsigns',
}

local loaded_plugins = {}
for index, plugin in pairs(plugins) do
    loaded_plugins[index] = require('falcon.plugins.common.' .. plugin)
end

return lush.merge(loaded_plugins)
