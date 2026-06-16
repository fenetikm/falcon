local lush = require("lush")
local colours = require('falcon.colours')
local base_ui = require('falcon.base_ui')

local p = lush(function()
  return {
    diffAdded { fg = colours.normal_gray, bg = colours.off_green },
    diffAddedInline { fg = colours.light_gray, bg = colours.off_green_alt },
    diffRemoved { fg = colours.normal_gray, bg = colours.off_red },
    diffRemovedInline { fg = colours.light_gray, bg = colours.off_red_alt },
    diffFile { base_ui.Title },
    diffLine { base_ui.DiffChange },
    diffSubname { fg = colours.light_gray },
  }
end)

return p
