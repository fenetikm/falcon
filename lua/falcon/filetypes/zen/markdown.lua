local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')
local base_ui = require('falcon.base_ui')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        markdownH1                {}, -- htmlH1
        markdownH2                {}, -- htmlH2
        markdownH3                {}, -- htmlH3
        markdownH4                {}, -- htmlH4
        markdownH5                {}, -- htmlH5
        markdownH6                {}, -- htmlH6
        markdownHeadingRule       {}, -- markdownRule
        markdownHeadingDelimiter  {classic.Delimiter}, -- Delimiter
        markdownItemDelimiter     {classic.Delimiter},
        markdownInlineDelimiter   {fg = colours.tan},
        markdownOrderedListMarker {classic.Delimiter}, -- markdownListMarker
        markdownListMarker        {classic.Delimiter}, -- htmlTagName
        markdownBlockquote        {}, -- Comment
        markdownRule              {}, -- PreProc
        markdownLinkText          {}, -- htmlLink
        markdownLinkTextDelimiter {classic.Delimiter},
        markdownIdDeclaration     {}, -- Typedef
        markdownId                {}, -- Type
        markdownAutomaticLink     {}, -- markdownUrl
        markdownUrl               {fg = colours.blue_gray, gui = styles.underline}, -- Float
        markdownUrlTitle          {}, -- String
        markdownIdDelimiter       {}, -- markdownLinkDelimiter
        markdownUrlDelimiter      {}, -- htmlTag
        markdownUrlTitleDelimiter {}, -- Delimiter
        markdownItalic            {}, -- htmlItalic
        markdownBold              {}, -- htmlBold
        markdownBoldItalic        {}, -- htmlBoldItalic
        markdownCodeDelimiter     {fg = colours.orange}, -- Delimiter
        markdownCode              {fg = colours.mid_gray_alt},
        markdownEscape            {}, -- Special
        markdownError             {base_ui.SpellBad}, -- Error
        markdownXmlElement        {fg = colours.mid_gray},
        htmlH1                    {gui = styles.bold},
        htmlH2                    {htmlH1},
        htmlH3                    {htmlH2},
        htmlH4                    {htmlH2},
        htmlH5                    {htmlH2},
        htmlH6                    {htmlH2},
        mkdLink                   {classic.Underlined},
        mkdURL                    {fg = colours.blue_gray, gui = styles.underline},
        mkdInlineURL              {fg = colours.blue_gray, gui = styles.underline},
        mkdBold                   {classic.Bold},
        htmlBold                  {classic.Bold},
        mkdListItem               {classic.Delimiter},
        htmlItalic                {classic.Italic},
        mkdCode                   {fg = colours.mid_gray_alt},
        mkdCodeDelimiter          {fg = colours.orange},
        mkdHeading                {classic.Delimiter},
        mkdStrike                 {gui = styles.strikethrough},
        mkdCodeStart              {mkdCodeDelimiter},
    }
end)

return p
