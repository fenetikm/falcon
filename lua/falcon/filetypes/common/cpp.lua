local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        cPreCondit      {fg = colours.br_blue},
        cDefine         {classic.Define},
        cStructure      {fg = colours.blue_gray},
        cStorageClass   {classic.StorageClass},
        cType           {classic.Type},
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
