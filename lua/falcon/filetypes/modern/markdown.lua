local lush = require("lush")
local colours = require('falcon.colours')
local modern = require('falcon.modern')
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
        markdownError             {modern.SpellBad}, -- Error
        markdownXmlElement        {},
        htmlH1                    {modern.Keyword},
        htmlH2                    {htmlH1},
        htmlH3                    {htmlH2},
        htmlH4                    {htmlH2},
        htmlH5                    {htmlH2},
        htmlH6                    {htmlH2},
        htmlTagName               {modern.Keyword},
        mkdLink                   {modern.Underlined},
        mkdURL                    {fg = colours.blue_gray, gui = styles.underline},
        mkdInlineURL              {fg = colours.blue_gray, gui = styles.underline},
        mkdBold                   {modern.Bold},
        mkdListItem               {},
        mkdCode                   {modern.String},
        mkdCodeDelimiter          {modern.Operator},
        mkdHeading                {},
        mkdStrike                 {gui = styles.strikethrough},
        mkdCodeStart              {modern.Operator},
        mkdCodeEnd                {modern.Operator},
        mkdBlockQuote             {modern.Comment},
        sym('@markup.heading.1')  {htmlH1},
        sym('@markup.heading.2')  {htmlH1},
        sym('@markup.heading.3')  {htmlH1},
        sym('@markup.heading.4')  {htmlH1},
        sym('@markup.heading.5')  {htmlH1},
        sym('@markup.heading.6')  {htmlH1},
        sym('@markup.link')       {mkdURL},
        sym('@markup.link.label') {mkdURL},
        sym('@markup.link.URL')   {mkdURL},
        sym('@markup.quote')      {mkdBlockQuote},
        sym('@markup.raw.block')  {mkdCodeStart},
    }
end)

return p
