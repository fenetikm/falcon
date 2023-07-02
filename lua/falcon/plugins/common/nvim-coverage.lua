local lush = require('lush')
local colours = require('falcon.colours')

print('coverage loaded')

local p = lush(function()
  return {
    NvimCoverageCovered   {fg = colours.green},
    NvimCoverageUncovered {fg = colours.red},
    NvimCoveragePartial   {fg = colours.yellow},
  }
end)

return p
