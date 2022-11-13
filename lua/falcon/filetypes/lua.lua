local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        luaFuncKeyword {fg = colours.yellow},
        luaFuncTable   {fg = colours.normal_gray},
        luaFuncName    {fg = colours.normal_gray},
        luaFuncCall    {fg = colours.normal_gray},
        luaFuncArgName {fg = colours.blue_gray},
        luaCond        {fg = colours.yellow},
        luaStatement   {luaCond},
        luaLocal       {classic.Constant},
        luaFuncParens  {classic.Delimiter},
        luaParens      {luaFuncParens},
        luaBraces      {luaFuncParens},
        luaDocTag      {fg = colours.tan, gui = styles.italic},
    }
end)

return p
