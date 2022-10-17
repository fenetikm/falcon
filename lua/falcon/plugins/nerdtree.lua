local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        NERDTreePart {}, -- Special
        NERDTreePartFile {}, -- Type
        NERDTreeExecFile {}, -- Title
        NERDTreeDirSlash {}, -- Identifier
        NERDTreeBookmarksHeader {}, -- statement
        NERDTreeBookmarksLeader {}, -- ignore
        NERDTreeBookmarkName {}, -- Identifier
        NERDTreeBookmark {}, -- normal
        NERDTreeHelp {}, -- String
        NERDTreeHelpKey {}, -- Identifier
        NERDTreeHelpCommand {}, -- Identifier
        NERDTreeHelpTitle {}, -- Macro
        NERDTreeToggleOn {}, -- Question
        NERDTreeToggleOff {}, -- WarningMsg
        NERDTreeLinkTarget {}, -- Type
        NERDTreeLinkFile {}, -- Macro
        NERDTreeLinkDir {}, -- Macro
        NERDTreeDir {}, -- Directory
        NERDTreeUp {}, -- Directory
        NERDTreeFile {}, -- Normal
        NERDTreeCWD {fg = colours.yellow}, -- Statement
        NERDTreeOpenable {fg = colours.light_blue_gray}, -- Title
        NERDTreeClosable {fg = colours.light_blue_gray}, -- Title
        NERDTreeIgnore {}, -- ignore
        NERDTreeRO {}, -- WarningMsg
        NERDTreeFlags {fg = colours.light_blue_gray}, -- Number
        NERDTreeGitStatusDirDirty {fg = colours.red},
    }
end)

return p
