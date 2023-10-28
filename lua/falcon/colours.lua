local highlights = require('falcon.highlights')
local core = require('falcon.palette')

for k,v in pairs(highlights) do
  core[k] = v
end

return core
