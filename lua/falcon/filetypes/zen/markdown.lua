local lush = require("lush")
local colours = require('falcon.colours')
local zen = require('falcon.zen')
local styles = require('falcon.styles')

local p = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
        markdownH1                {}, -- htmlH1
        markdownH2                {}, -- htmlH2
        markdownH3                {}, -- htmlH3
        markdownH4                {}, -- htmlH4
        markdownH5                {}, -- htmlH5
        markdownH6                {}, -- htmlH6
        markdownHeadingRule       {}, -- markdownRule
        markdownHeadingDelimiter  {}, -- Delimiter
        markdownItemDelimiter     {},
        markdownInlineDelimiter   {},
        markdownOrderedListMarker {}, -- markdownListMarker
        markdownListMarker        {}, -- htmlTagName
        markdownBlockquote        {}, -- Comment
        markdownRule              {}, -- PreProc
        markdownLinkText          {}, -- htmlLink
        markdownLinkTextDelimiter {},
        markdownIdDeclaration     {}, -- Typedef
        markdownId                {}, -- Type
        markdownAutomaticLink     {}, -- markdownUrl
        markdownUrl               {}, -- Float
        markdownUrlTitle          {}, -- String
        markdownIdDelimiter       {}, -- markdownLinkDelimiter
        markdownUrlDelimiter      {}, -- htmlTag
        markdownUrlTitleDelimiter {}, -- Delimiter
        markdownItalic            {}, -- htmlItalic
        markdownBold              {}, -- htmlBold
        markdownBoldItalic        {}, -- htmlBoldItalic
        markdownCodeDelimiter     {}, -- Delimiter
        markdownCode              {},
        markdownEscape            {}, -- Special
        markdownError             {zen.SpellBad}, -- Error
        markdownXmlElement        {},
        htmlH1                    {zen.Keyword},
        htmlH2                    {htmlH1},
        htmlH3                    {htmlH2},
        htmlH4                    {htmlH2},
        htmlH5                    {htmlH2},
        htmlH6                    {htmlH2},
        htmlTagName                   {zen.Keyword},
        mkdLink                   {zen.Underlined},
        mkdURL                    {fg = colours.blue_gray, gui = styles.underline},
        mkdInlineURL              {fg = colours.blue_gray, gui = styles.underline},
        mkdBold                   {zen.Bold},
        mkdListItem               {},
        mkdCode                   {zen.String},
        mkdCodeDelimiter          {zen.Operator},
        mkdHeading                {},
        mkdStrike                 {gui = styles.strikethrough},
        mkdCodeStart              {zen.Operator},
        mkdCodeEnd                {zen.Operator},
        mkdBlockQuote             {zen.Comment}
    }
end)

return p
