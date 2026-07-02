local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
  return {
    FzfLuaPointer { fg = colours.blue_dark_gray },
    FzfLuaPrompt { fg = colours.mid_gray }
  }
end)

return p
