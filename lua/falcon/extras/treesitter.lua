local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        TSAnnotation         {base.PreProc},
        TSAttribute          {base.PreProc},
        TSBoolean            {base.Boolean},
        TSCharacter          {base.Character},
        TSCharacterSpecial   { } , -- Special characters.
        TSComment            {base.Comment},
        TSConditional        {base.Conditional},
        TSConstBuiltin       {base.Boolean},
        TSConstMacro         {base.Define},
        TSConstant           {base.Constant},
        TSConstructor        {fg = colours.normal_gray, gui = styles.bold},
        TSDanger             {},
        TSDebug              {},
        TSDefine             {},
        TSEmphasis           {base.Italic},
        TSEnvironment        {},
        TSEnvironmentName    {},
        TSError              {fg = colours.yellow},
        TSException          {base.Keyword},
        TSField              {base.Identifier},
        TSFloat              {base.Float},
        TSFuncBuiltin        {base.Special},
        TSFuncMacro          {base.Macro},
        TSFunction           {base.Function},
        TSInclude            {base.Include},
        TSKeyword            {base.Keyword},
        TSKeywordFunction    {fg = colours.tan},
        TSOperator           {base.Operator},
        TSKeywordOperator    {TSOperator},
        TSKeywordReturn      {TSOperator},
        TSLabel              {base.Label},
        TSLiteral            {base.String},
        TSMath               {},
        TSMethod             {fg = colours.normal_gray},
        TSNamespace          {base.Include},
        TSNone               {},
        TSNote               {base.Todo},
        TSNumber             {base.Number},
        TSParameter          {base.Identifier},
        TSParameterReference {TSParameter},
        TSProperty           {base.Identifier},
        TSPunctBracket       {base.Delimiter},
        TSPunctDelimiter     {base.Delimiter},
        TSPunctSpecial       {base.Delimiter},
        TSRepeat             {base.Repeat},
        TSStrike             {gui = styles.strikethrough},
        TSString             {base.String},
        TSStringEscape       {base.SpecialChar},
        TSStringRegex        {base.String},
        TSStringSpecial      {base.String},
        TSStrong             {base.Bold},
        TSStructure          {base.Structure},
        TSSymbol             {fg = colours.blue_gray},
        TSTag                {base.Tag},
        TSTagAttribute       {fg = colours.normal_gray},
        TSTagDelimiter       {base.Delimiter},
        TSText               {TSNone},
        TSTextReference      {},
        TSTitle              {base.Title},
        TSType               {base.Type},
        TSTypeBuiltin        {base.Type},
        TSURI                {base.Underlined},
        TSUnderline          {gui = styles.underline},
        TSVariable           {base.Identifier},
        TSVariableBuiltin    {base.Special},
        TSWarning            {fg = colors.mid_yellow},
    }
end)

return p