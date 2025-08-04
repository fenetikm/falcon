local lush = require('lush')
local styles = require('falcon.styles')
local modern = require('falcon.modern')

local p = lush(function()
  return {
    TreesitterContext { fg = modern.Comment.fg, bg = 'NONE', gui = modern.Comment.gui },
    TreesitterContextLineNumber { fg = modern.Comment.fg, gui = modern.Comment.gui, bg = 'NONE' },
    TreesitterContextBottom { fg = modern.Comment.fg, bg = 'NONE', gui = styles.underline .. ',' .. modern.Comment.gui },
    TreesitterContextSeparator { fg = modern.Normal.fg, bg = 'NONE' },
  }
end)

return p
