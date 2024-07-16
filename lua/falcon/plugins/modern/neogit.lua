local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')
local gitsigns = require('falcon.plugins.common.gitsigns')
local styles = require('falcon.styles')
local diff = require('falcon.extras.common.diff')

-- see https://github.com/NeogitOrg/neogit/blob/master/lua/neogit/lib/hl.lua
local p = lush(function()
  return {
    NeogitSectionHeader       { modern.Keyword},
    NeogitPopupSwitchKey      { fg = colours.light_gray},
    NeogitPopupOptionKey      { NeogitPopupSwitchKey},
    NeogitPopupConfigKey      { NeogitPopupSwitchKey},
    NeogitPopupActionKey      { NeogitPopupSwitchKey},
    NeogitUnmergedInto        { NeogitSectionHeader},
    NeogitBranch              { modern.Normal},
    NeogitBranchHead          { modern.Normal},
    NeogitRemote              { modern.Normal},
    NeogitTagName             { modern.Normal},
    NeogitTagDistance         { modern.Comment},
    NeogitHunkHeader          { modern.Comment},
    NeogitHunkHeaderHighlight { modern.Comment},
    NeogitChangeModified      { gitsigns.GitSignsChange},
    NeogitChangeBothModified  { NeogitChangeModified},
    NeogitChangeUpdated       { NeogitChangeModified},
    NeogitChangeAdded         { gitsigns.GitSignsAdd},
    NeogitChangeCopied        { NeogitChangeAdded},
    NeogitChangeRenamed       { NeogitChangeAdded},
    NeogitChangeNewFile       { NeogitChangeAdded},
    NeogitChangeDeleted       { gitsigns.GitSignsDelete},
    NeogitDiffDelete          { diff.diffRemoved},
    NeogitDiffAdd             { diff.diffAdded},
    NeogitDiffDeleteHighlight { diff.diffRemoved},
    NeogitDiffAddHighlight    { diff.diffAdded},
    NeogitCommitViewHeader    { modern.Keyword},
    NeogitFilePath            { modern.Normal},
    NeogitDiffHeader          { modern.Normal, gui = styles.bold},
    NeogitDiffHeaderHighlight { modern.MatchParen, gui = styles.bold},
  }
end)

return p
