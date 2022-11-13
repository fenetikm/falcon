local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        vimCommentTitle {fg = colours.light_gray, gui = styles.italic},
        vimCommand      {fg = colours.tan},
        vimVar          {fg = colours.blue_gray},
        vimLet          {fg = colours.yellow},
        vimNotFunc      {fg = colours.yellow},
        vimIsCommand    {fg = colours.yellow},
        vimOperParen    {classic.Delimiter},
        vimFuncVar      {fg = colours.blue_gray, gui = styles.bold},
        vimFuncName     {fg = colours.normal_gray},
        vimAutoEvent    {fg = colours.red},
        vimMap          {fg = colours.blue_gray},
        vimGroup        {fg = colours.blue_gray},
        vimHiTerm       {fg = colours.blue_gray},
        vimSetSep       {fg = colours.normal_gray},
        vimHighlight    {vimLet},
        vimSetEqual     {fg = colours.orange},
        vimNotation     {fg = colours.normal_gray},
        vimMapLhs       {fg = colours.tan},
        vimMapRhs       {fg = colours.light_blue_gray},
    }
end)

return p
