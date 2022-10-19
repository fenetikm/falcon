local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        htmlTag                 {fg = colours.normal_gray}, -- Function
        htmlEndTag              {base.Delimiter}, -- Identifier
        htmlArg                 {fg = colours.blue_gray}, -- Type
        htmlTagName             {base.Number}, -- htmlStatement
        htmlSpecialTagName      {fg = colours.yellow}, -- Exception
        htmlValue               {}, -- String
        htmlH1                  {fg = colours.yellow}, -- Title
        htmlH2                  {fg = colours.tan}, -- htmlH1
        htmlH3                  {fg = colours.tan}, -- htmlH2
        htmlH4                  {fg = colours.tan}, -- htmlH3
        htmlH5                  {fg = colours.tan}, -- htmlH4
        htmlH6                  {fg = colours.tan}, -- htmlH5
        htmlHead                {}, -- PreProc
        htmlTitle               {fg = colours.normal_gray, gui = styles.bold}, -- Title
        htmlBoldItalicUnderline {}, -- htmlBoldUnderlineItalic
        htmlUnderlineBold       {}, -- htmlBoldUnderline
        htmlUnderlineItalicBold {}, -- htmlBoldUnderlineItalic
        htmlUnderlineBoldItalic {}, -- htmlBoldUnderlineItalic
        htmlItalicUnderline     {}, -- htmlUnderlineItalic
        htmlItalicBold          {}, -- htmlBoldItalic
        htmlItalicBoldUnderline {}, -- htmlBoldUnderlineItalic
        htmlItalicUnderlineBold {}, -- htmlBoldUnderlineItalic
        htmlLink                {}, -- Underlined
        htmlLeadingSpace        {}, -- None
        htmlPreStmt             {}, -- PreProc
        htmlPreError            {}, -- Error
        htmlPreProc             {}, -- PreProc
        htmlPreAttr             {}, -- String
        htmlPreProcAttrName     {}, -- PreProc
        htmlPreProcAttrError    {}, -- Error
        htmlSpecial             {}, -- Special
        htmlSpecialChar         {fg = colours.tan}, -- Special
        htmlString              {}, -- String
        htmlStatement           {}, -- Statement
        htmlComment             {}, -- Comment
        htmlCommentPart         {}, -- Comment
        htmlCommentError        {}, -- htmlError
        htmlTagError            {}, -- htmlError
        htmlEvent               {}, -- javaScript
        htmlError               {}, -- Error
        javaScript              {}, -- Special
        javaScriptExpression    {}, -- javaScript
        htmlCssStyleComment     {}, -- Comment
        htmlCssDefinition       {}, -- Special
    }
end)

return p
