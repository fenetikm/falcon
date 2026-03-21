local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
  return {
    SnacksPickerTitle { fg = colours.red, bg = colours.blue_dark_float }, -- this is the right one
    -- SnacksPickerFloatTitle = { fg = colours.red },
    -- SnacksPickerListTitle = { fg = colours.red },
    -- SnacksPickerInputTitle = { fg = colours.red },
    -- SnacksTitle = { fg = colours.red },
    -- FloatTitle = { fg = colours.red },
    -- WinBar = { fg = colours.red },
    -- SnacksWinBar = { fg = colours.red },
    -- SnacksPickerPreviewTitle { fg = colours.red },
    -- PreviewTitle { fg = colours.red },
  }
end)

return p
