local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        javaScriptComment          {}, -- Comment
        javaScriptLineComment      {}, -- Comment
        javaScriptCommentTodo      {}, -- Todo
        javaScriptSpecial          {}, -- Special
        javaScriptStringS          {}, -- String
        javaScriptStringD          {}, -- String
        javaScriptCharacter        {}, -- Character
        javaScriptSpecialCharacter {}, -- javaScriptSpecial
        javaScriptNumber           {}, -- javaScriptValue
        javaScriptConditional      {}, -- Conditional
        javaScriptRepeat           {}, -- Repeat
        javaScriptBranch           {}, -- Conditional
        javaScriptOperator         {}, -- Operator
        javaScriptType             {}, -- Type
        javaScriptStatement        {}, -- Statement
        javaScriptFunction         {}, -- Function
        javaScriptBraces           {fg = colours.orange}, -- Function
        javaScriptError            {}, -- Error
        javaScriptParensError      {}, -- Error
        javaScriptNull             {fg = colours.normal_gray, gui = styles.italic}, -- Keyword
        javaScriptBoolean          {}, -- Boolean
        javaScriptRegexpString     {}, -- String
        javaScriptIdentifier       {}, -- Identifier
        javaScriptLabel            {}, -- Label
        javaScriptException        {}, -- Exception
        javaScriptMessage          {}, -- Keyword
        javaScriptGlobal           {fg = colours.lavender, gui = styles.bold}, -- Keyword
        javaScriptMember           {}, -- Keyword
        javaScriptDeprecated       {}, -- Exception
        javaScriptReserved         {}, -- Keyword
        javaScriptDebug            {}, -- Debug
        javaScriptConstant         {}, -- Label
        jsBrackets                 {base.Delimiter},
        jsClassBraces              {jsBrackets},
        jsBraces                   {jsBrackets},
        jsObjectBraces             {jsBrackets},
        jsParens                   {jsBrackets},
        jsObjectKey                {fg = colours.blue_gray},
        jsFuncBraces               {jsBrackets},
        jsFuncParens               {jsBrackets},
        jsIfElseBraces             {jsBrackets},
        jsFuncArgs                 {fg = colours.blue_gray},
        jsExtendsKeyword           {fg = colours.yellow},
        jsArrowFunction            {base.Operator},
        jsFunction                 {fg = colours.yellow},
        jsRepeat                   {jsFunction},
        jsReturn                   {fg = colours.yellow},
        jsClassDefinition          {fg = colours.normal_gray},
        jsClassProperty            {fg = colours.normal_gray},
        jsClassKeyword             {fg = colours.yellow},
        jsClassFuncName            {fg = colours.normal_gray},
        jsFuncName                 {fg = colours.normal_gray},
        jsNull                     {fg = colours.normal_gray, gui = styles.italic},
        jsStorageClass             {base.StorageClass},
        jsObjectSeparator          {fg = colours.normal_gray},
        jsObjectValue              {fg = colours.blue_gray},
        jsExportDefault            {fg = colours.blue_gray},
        jsRegexpCharClass          {fg = colours.orange},
        jsTemplateBraces           {fg = colours.orange},
        jsThis                     {fg = colours.blue_gray, gui = styles.bold},
        jsFuncCall                 {fg = colours.tan},
        jsObjectProp               {fg = colours.normal_gray},
        jsConditional              {fg = colours.yellow},
        jsVariableDef              {fg = colours.blue_gray},
        jsFuncBlock                {fg = colours.white},
        jsTry                      {fg = colours.yellow},
        jsCatch                    {jsTry},
        jsTryCatchBraces           {fg = colours.orange},
        jsGlobalObjects            {fg = colours.lavender, gui = styles.bold},
        jsParen                    {fg = colours.blue_gray},
        jsParenCatch               {jsParen},
        jsParenIfElse              {jsParen},
        jsAsyncKeyword             {fg = colours.tan},
        jsForAwait                 {jsAsyncKeyword},
        jsGlobalNodeObjects        {fg = colours.tan},
    }
end)

return p
