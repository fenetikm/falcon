local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        gitcommitSummary        {fg = colours.normal_gray}, -- Keyword
        gitcommitComment        {}, -- Comment
        gitcommitUntracked      {}, -- gitcommitComment
        gitcommitDiscarded      {}, -- gitcommitComment
        gitcommitSelected       {}, -- gitcommitComment
        gitcommitUnmerged       {}, -- gitcommitComment
        gitcommitOnBranch       {}, -- Comment
        gitcommitBranch         {fg = colours.normal_gray}, -- Special
        gitcommitNoBranch       {}, -- gitCommitBranch
        gitcommitDiscardedType  {fg = colours.blue_gray}, -- gitcommitType
        gitcommitSelectedType   {fg = colours.green}, -- gitcommitType
        gitcommitUnmergedType   {}, -- gitcommitType
        gitcommitType           {}, -- Type
        gitcommitNoChanges      {}, -- gitcommitHeader
        gitcommitHeader         {}, -- PreProc
        gitcommitUntrackedFile  {}, -- gitcommitFile
        gitcommitDiscardedFile  {fg = colours.light_gray}, -- gitcommitFile
        gitcommitSelectedFile   {fg = colours.normal_gray}, -- gitcommitFile
        gitcommitUnmergedFile   {}, -- gitcommitFile
        gitcommitFile           {}, -- Constant
        gitcommitDiscardedArrow {}, -- gitcommitArrow
        gitcommitSelectedArrow  {}, -- gitcommitArrow
        gitcommitUnmergedArrow  {}, -- gitcommitArrow
        gitcommitArrow          {}, -- gitcommitComment
        gitcommitOverflow       {}, -- none
        gitcommitBlank          {}, -- Error
    }
end)

return p
