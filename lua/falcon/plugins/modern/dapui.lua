local lush = require('lush')
local colours = require('falcon.colours')
local modern = require('falcon.modern')
local styles = require('falcon.styles')
local base_ui = require('falcon.base_ui')

local p = lush(function()
    return {
        DapUIVariable               { fg = colours.blue_gray},
        DapUIValue                  { modern.Normal},
        DapUIModifiedValue          { modern.Normal},
        DapUIType                   { modern.Keyword},
        DapUIScope                  { modern.Keyword},
        DapUILineNumber             { modern.Normal},
        DapUISource                 { modern.Normal},
        DapUIDecoration             { fg = colours.blue_gray},
        DapUIThread                 { modern.String},
        DapUIStoppedThread          { modern.Comment},
        DapUIBreakpointsPath        { modern.Keyword},
        DapUIBreakpointsCurrentLine { modern.IncSearch},
        DapUIPlayPause              { fg = colours.green},
        DapUIRestart                { DapUIPlayPause},
        DapUIStop                   { fg = colours.red},
        DapUIStepOver               { fg = colours.dark_tan},
        DapUIStepInto               { DapUIStepOver},
        DapUIStepBack               { DapUIStepOver},
        DapUIStepOut                { DapUIStepOver},
        DapUIWatchesEmpty           { modern.Normal},
    }
end)

return p
