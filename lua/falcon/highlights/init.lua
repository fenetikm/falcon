local settings  = require('falcon.settings').get()
local highlights = require('falcon.highlights.' .. settings.highlights)

return highlights
