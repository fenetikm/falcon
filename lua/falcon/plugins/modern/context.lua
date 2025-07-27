local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
  return {
    TreesitterContext { fg = colours.mid_gray_alt, bg = 'NONE' },
    TreesitterContextLineNumber { fg = colours.mid_gray_alt, bg = 'NONE' },
    TreesitterContextBottom { fg = colours.mid_gray_alt, bg = 'NONE', gui = styles.underline },
    TreesitterContextSeparator { fg = colours.mid_gray_alt2, bg = 'NONE' },
  }
end)

return p
