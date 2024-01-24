local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')
local gitsigns = require('falcon.plugins.common.gitsigns')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        NeogitSectionHeader {modern.Keyword},
        NeogitBranch {modern.Normal},
        NeogitBranchHead {},
        NeogitRemote {modern.Normal},
        NeogitTagName {modern.Normal},
        NeogitTagDistance {modern.Comment},
        NeogitHunkHeader {bg = colours.normal_gray},
        NeogitHunkHeaderHighlight {bg = colours.bg},
        NeogitChangeModified {gitsigns.GitSignsChange},
        NeogitChangeBothModified {NeogitChangeModified},
        NeogitChangeUpdated {NeogitChangeModified},
        NeogitChangeAdded {gitsigns.GitSignsAdd},
        NeogitChangeCopied {NeogitChangeAdded},
        NeogitChangeRenamed {NeogitChangeAdded},
        NeogitChangeNewFile {NeogitChangeAdded},
        NeogitChangeDeleted {gitsigns.GitSignsDelete}
    }
end)

return p
