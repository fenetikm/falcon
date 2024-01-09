local lush = require('lush')
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
      DiffviewFilePanelTitle   {fg = colours.blue_gray, gui = styles.bold},
      DiffviewFilePanelCounter {fg = colours.normal_gray},
      DiffviewFolderSign {fg = colours.blue_gray},
    }
end)

return p
