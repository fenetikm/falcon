local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        FugitiveblameBoundary {}, -- Keyword
        FugitiveblameHash {}, -- Identifier
        FugitiveblameUncommitted {}, -- Ignore
        FugitiveblameTime {}, -- PreProc
        FugitiveblameLineNumber {}, -- Number
        FugitiveblameOriginalFile {}, -- String
        FugitiveblameOriginalLineNumber {}, --
        FugitiveblameShort {}, -- FugitiveblameDelimiter
        FugitiveblameDelimiter {}, -- Delimiter
        FugitiveblameNotCommittedYet {}, -- Comment
        fugitiveSymbolicRef {fg = colours.blue_gray},
        fugitiveHeader {fg = colours.yellow},
        fugitiveHunk {fg = colours.normal_gray},
        fugitiveModifier {fg = colours.orange},
    }
end)

return p
