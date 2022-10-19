local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
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
        markdownHeadingDelimiter  {base.Delimiter}, -- Delimiter
        markdownItemDelimiter     {base.Delimiter},
        markdownInlineDelimiter   {fg = colours.tan},
        markdownOrderedListMarker {base.Delimiter}, -- markdownListMarker
        markdownListMarker        {base.Delimiter}, -- htmlTagName
        markdownBlockquote        {}, -- Comment
        markdownRule              {}, -- PreProc
        markdownLinkText          {}, -- htmlLink
        markdownLinkTextDelimiter {base.Delimiter},
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
        markdownError             {base.SpellBad}, -- Error
        markdownXmlElement        {fg = colours.mid_gray},
        htmlH1                    {fg = colours.br_blue, gui = styles.bold},
        htmlH2                    {fg = colours.br_blue},
        htmlH3                    {htmlH2},
        htmlH4                    {htmlH2},
        htmlH5                    {htmlH2},
        htmlH6                    {htmlH2},
        mkdLink                   {base.Underlined},
        mkdURL                    {fg = colours.blue_gray, gui = styles.underline},
        mkdInlineURL              {fg = colours.blue_gray, gui = styles.underline},
        mkdBold                   {base.Bold},
        htmlBold                  {base.Bold},
        mkdListItem               {base.Delimiter},
        htmlItalic                {base.Italic},
        mkdCode                   {fg = colours.mid_gray_alt},
        mkdCodeDelimiter          {fg = colours.orange},
        mkdHeading                {base.Delimiter},
    }
end)

return p
