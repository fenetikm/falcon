local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        shArithRegion        {}, -- shShellVariables
        shAtExpr             {}, -- shSetList
        shBeginHere          {}, -- shRedir
        shCaseBar            {classic.Operator}, -- shConditional
        shCaseCommandSub     {}, -- shCommandSub
        shCaseDoubleQuote    {}, -- shDoubleQuote
        shCaseIn             {}, -- shConditional
        shQuote              {classic.Delimiter}, -- shOperator
        shCaseSingleQuote    {}, -- shSingleQuote
        shCaseStart          {}, -- shConditional
        shCmdSubRegion       {}, -- shShellVariables
        shColon              {}, -- shComment
        shDerefOp            {}, -- shOperator
        shDerefPOL           {}, -- shDerefOp
        shDerefPPS           {}, -- shDerefOp
        shDeref              {}, -- shShellVariables
        shDerefDelim         {}, -- shOperator
        shDerefSimple        {}, -- shDeref
        shDerefSpecial       {}, -- shDeref
        shDerefString        {}, -- shDoubleQuote
        shDerefVar           {}, -- shDeref
        shDoubleQuote        {}, -- shString
        shEcho               {}, -- shString
        shEchoDelim          {}, -- shOperator
        shEchoQuote          {}, -- shString
        shForPP              {}, -- shLoop
        shEmbeddedEcho       {}, -- shString
        shEscape             {}, -- shCommandSub
        shExDoubleQuote      {}, -- shDoubleQuote
        shExSingleQuote      {}, -- shSingleQuote
        shFunction           {fg = colours.normal_gray}, -- Function
        shHereDoc            {}, -- shString
        shHerePayload        {}, -- shHereDoc
        shLoop               {classic.Function}, -- shStatement
        shMoreSpecial        {}, -- shSpecial
        shOption             {}, -- shCommandSub
        shPattern            {}, -- shString
        shParen              {}, -- shArithmetic
        shPosnParm           {}, -- shShellVariables
        shQuickComment       {}, -- shComment
        shRange              {}, -- shOperator
        shRedir              {}, -- shOperator
        shSetListDelim       {}, -- shOperator
        shSetOption          {}, -- shOption
        shSingleQuote        {}, -- shString
        shSource             {}, -- shOperator
        shStringSpecial      {}, -- shSpecial
        shSubShRegion        {}, -- shOperator
        shTestOpr            {classic.Operator}, -- shConditional
        shTestPattern        {}, -- shString
        shTestDoubleQuote    {}, -- shString
        shTestSingleQuote    {}, -- shString
        shVariable           {fg = colours.blue_gray}, -- shSetList
        shWrapLineOperator   {}, -- shOperator
        bashAdminStatement   {}, -- shStatement if exists("b:is_bash")
        bashSpecialVariables {fg = colours.blue_gray}, -- shShellVariables if exists("b:is_bash")
        bashStatement        {}, -- shStatement if exists("b:is_bash")
        shFunctionParen      {}, -- Delimiter if exists("b:is_bash")
        shFunctionDelim      {}, -- Delimiter if exists("b:is_bash")
        kshSpecialVariables  {}, -- shShellVariables if exists("b:is_kornshell")
        kshStatement         {}, -- shStatement if exists("b:is_kornshell")
        shCaseError          {}, -- Error if !exists("g:sh_no_error")
        shCondError          {}, -- Error if !exists("g:sh_no_error")
        shCurlyError         {}, -- Error if !exists("g:sh_no_error")
        shDerefError         {}, -- Error if !exists("g:sh_no_error")
        shDerefOpError       {}, -- Error if !exists("g:sh_no_error")
        shDerefWordError     {}, -- Error if !exists("g:sh_no_error")
        shDoError            {}, -- Error if !exists("g:sh_no_error")
        shEsacError          {}, -- Error if !exists("g:sh_no_error")
        shIfError            {}, -- Error if !exists("g:sh_no_error")
        shInError            {}, -- Error if !exists("g:sh_no_error")
        shParenError         {}, -- Error if !exists("g:sh_no_error")
        shTestError          {}, -- Error if !exists("g:sh_no_error")
        shDTestError         {}, -- Error if exists("b:is_kornshell")
        shArithmetic         {}, -- Special
        shCharClass          {}, -- Identifier
        shSnglCase           {classic.Delimiter}, -- Statement
        shCommandSub         {}, -- Special
        shComment            {}, -- Comment
        shConditional        {}, -- Conditional
        shCtrlSeq            {}, -- Special
        shExprRegion         {}, -- Delimiter
        shFunctionKey        {}, -- Function
        shFunctionName       {}, -- Function
        shNumber             {}, -- Number
        shOperator           {}, -- Operator
        shRepeat             {}, -- Repeat
        shSetList            {fg = colours.light_blue_gray}, -- Identifier
        shShellVariables     {}, -- PreProc
        shSpecial            {}, -- Special
        shStatement          {fg = colours.normal_gray}, -- Statement
        shSet                {shStatement}, -- Statement
        shString             {}, -- String
        shTodo               {}, -- Todo
        shAlias              {}, -- Identifier
        shHereDoc01          {}, -- shRedir
        shHereDoc02          {}, -- shRedir
        shHereDoc03          {}, -- shRedir
        shHereDoc04          {}, -- shRedir
        shHereDoc05          {}, -- shRedir
        shHereDoc06          {}, -- shRedir
        shHereDoc07          {}, -- shRedir
        shHereDoc08          {}, -- shRedir
        shHereDoc09          {}, -- shRedir
        shHereDoc10          {}, -- shRedir
        shHereDoc11          {}, -- shRedir
        shHereDoc12          {}, -- shRedir
        shHereDoc13          {}, -- shRedir
        shHereDoc14          {}, -- shRedir
        shHereDoc15          {}, -- shRedir
        shHereDoc16          {}, -- shRedir
        shHereDoc17          {}, -- shRedir
        shHereDoc18          {}, -- shRedir
        shHereDoc19          {}, -- shRedir
        shHereDoc20          {}, -- shRedir
        shHereDoc21          {}, -- shRedir
        shHereDoc22          {}, -- shRedir
        shHereDoc23          {}, -- shRedir
        shHereDoc24          {}, -- shRedir
        shHereDoc25          {}, -- shRedir
        shHereDoc26          {}, -- shRedir
        shHereDoc27          {}, -- shRedir
        shHereDoc28          {}, -- shRedir
        shHereDoc29          {}, -- shRedir
        shHereDoc30          {}, -- shRedir
        shHereDoc31          {}, -- shRedir
        shHereDoc32          {}, -- shRedir
    }
end)

return p
