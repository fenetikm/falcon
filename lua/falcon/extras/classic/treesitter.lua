local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')
local base_ui = require('falcon.base_ui')
local styles = require('falcon.styles')

local p = lush(function()
    return {
    -- These are all deprecated, to be replaced below
        TSAnnotation         {classic.PreProc},
        TSAttribute          {classic.PreProc},
        TSBoolean            {classic.Boolean},
        TSCharacter          {classic.Character},
        TSCharacterSpecial   { } , -- Special characters.
        TSComment            {classic.Comment},
        TSConditional        {classic.Conditional},
        TSConstBuiltin       {classic.Boolean},
        TSConstMacro         {classic.Define},
        TSConstant           {classic.Constant},
        TSConstructor        {fg = colours.normal_gray, gui = styles.bold},
        TSDanger             {},
        TSDebug              {},
        TSDefine             {},
        TSEmphasis           {classic.Italic},
        TSEnvironment        {},
        TSEnvironmentName    {},
        TSError              {fg = colours.yellow},
        TSException          {classic.Keyword},
        TSField              {classic.Identifier},
        TSFloat              {classic.Float},
        TSFuncBuiltin        {classic.Special},
        TSFuncMacro          {classic.Macro},
        TSFunction           {classic.Function},
        TSInclude            {classic.Include},
        TSKeyword            {classic.Keyword},
        TSKeywordFunction    {fg = colours.tan},
        TSOperator           {classic.Operator},
        TSKeywordOperator    {TSOperator},
        TSKeywordReturn      {TSOperator},
        TSLabel              {classic.Label},
        TSLiteral            {classic.String},
        TSMath               {},
        TSMethod             {fg = colours.normal_gray},
        TSNamespace          {classic.Include},
        TSNone               {},
        TSNote               {classic.Todo},
        TSNumber             {classic.Number},
        TSParameter          {classic.Identifier},
        TSParameterReference {TSParameter},
        TSProperty           {classic.Identifier},
        TSPunctBracket       {classic.Delimiter},
        TSPunctDelimiter     {classic.Delimiter},
        TSPunctSpecial       {classic.Delimiter},
        TSRepeat             {classic.Repeat},
        TSStrike             {gui = styles.strikethrough},
        TSString             {classic.String},
        TSStringEscape       {classic.SpecialChar},
        TSStringRegex        {classic.String},
        TSStringSpecial      {classic.String},
        TSStrong             {classic.Bold},
        TSStructure          {classic.Structure},
        TSSymbol             {fg = colours.blue_gray},
        TSTag                {classic.Tag},
        TSTagAttribute       {fg = colours.normal_gray},
        TSTagDelimiter       {classic.Delimiter},
        TSText               {TSNone},
        TSTextReference      {},
        TSTitle              {base_ui.Title},
        TSType               {classic.Type},
        TSTypeBuiltin        {classic.Type},
        TSURI                {classic.Underlined},
        TSUnderline          {gui = styles.underline},
        TSVariable           {classic.Identifier},
        TSVariableBuiltin    {classic.Special},
        TSWarning            {fg = colors.mid_yellow},
    }
end)

return p
