local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        OilDirIcon { fg = colours.blue_gray },
        OilDir     { fg = colours.blue_gray },
        OilNoIcon  { fg = colours.blue_dark_gray },
        OilCreate  { fg = colours.green },
        OilMove    { fg = colours.blue_gray },
        OilCopy    { OilMove },
        OilChange  { OilMove },
        OilRestore { OilMove },
        OilDelete  { fg = colours.red },
        OilTrash   { OilDelete },
        OilPurge   { OilDelete },
    }
end)

return p
