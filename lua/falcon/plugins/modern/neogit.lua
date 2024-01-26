local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')
local gitsigns = require('falcon.plugins.common.gitsigns')
local styles = require('falcon.styles')
local diff = require('falcon.extras.common.diff')

local p = lush(function()
    return {
        NeogitSectionHeader {modern.Keyword},
        NeogitUnmergedInto {NeogitSectionHeader},
        NeogitBranch {modern.Normal},
        NeogitBranchHead {},
        NeogitRemote {modern.Normal},
        NeogitTagName {modern.Normal},
        NeogitTagDistance {modern.Comment},
        NeogitHunkHeader {modern.Comment},
        NeogitHunkHeaderHighlight {modern.Comment},
        NeogitChangeModified {gitsigns.GitSignsChange},
        NeogitChangeBothModified {NeogitChangeModified},
        NeogitChangeUpdated {NeogitChangeModified},
        NeogitChangeAdded {gitsigns.GitSignsAdd},
        NeogitChangeCopied {NeogitChangeAdded},
        NeogitChangeRenamed {NeogitChangeAdded},
        NeogitChangeNewFile {NeogitChangeAdded},
        NeogitChangeDeleted {gitsigns.GitSignsDelete},
        NeogitDiffDelete {diff.diffRemoved},
        NeogitDiffAdd {diff.diffAdded},
        NeogitDiffDeleteHighlight {diff.diffRemoved},
        NeogitDiffAddHighlight {diff.diffAdded},
    }
end)

return p
