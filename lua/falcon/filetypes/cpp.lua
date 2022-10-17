local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local base = require('falcon.base')

local p = lush(function()
    return {
        cPreCondit      {fg = colours.br_blue},
        cDefine         {base.Define},
        cStructure      {fg = colours.blue_gray},
        cStorageClass   {base.StorageClass},
        cType           {base.Type},
        cCustomParen    {fg = colours.orange},
        cConditional    {fg = colours.yellow},
        cCustomFunc     {fg = colours.blue_gray},
        cStatement      {fg = colours.yellow},
        cppSTLnamespace {fg = colours.light_blue_gray},
        cppAccess       {fg = colours.light_gray},
        cAnsiFunction   {fg = colours.tan},
        cRepeat         {fg = colours.yellow},
        cSpecial        {fg = colours.light_blue_gray, gui = styles.bold},
    }
end)

return p
