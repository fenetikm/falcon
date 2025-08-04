local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local modern = require('falcon.modern')

local p = lush(function()
  return {
    TreesitterContext { fg = modern.Comment.fg, bg = 'NONE' },
    TreesitterContextLineNumber { fg = modern.Comment.fg, bg = 'NONE' },
    TreesitterContextBottom { fg = modern.Comment.fg, bg = 'NONE', gui = styles.underline },
    TreesitterContextSeparator { fg = modern.Normal.fg, bg = 'NONE' },
  }
end)

return p
