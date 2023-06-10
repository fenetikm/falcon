local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local classic = require('falcon.classic')

local p = lush(function()
    return {
        phpConstant {}, -- Constant
        phpCoreConstant {}, -- Constant
        phpComment {}, -- Comment
        phpCommentTitle {fg = colours.mid_gray_alt, gui = styles.italic},
        phpDocTags {fg = colours.dark_tan, gui = styles.italic}, -- PreProc
        phpDocCustomTags {fg = colours.br_blue}, -- Type
        phpDocNamespaceSeparator {classic.Comment},
        phpUseNamespaceSeparator {fg = colours.light_gray},
        phpException {}, -- Exception
        phpBoolean {classic.Boolean}, -- Boolean
        phpStorageClass {fg = colours.orange}, -- StorageClass
        phpClasses {fg = colours.light_gray},
        phpStaticClasses {fg = colours.normal_gray, gui = styles.bold},
        phpClassImplements {fg = colours.normal_gray, gui = styles.italic},
        phpClassExtends {phpClassImplements},
        phpSCKeyword {}, -- StorageClass
        phpFCKeyword {}, -- Define
        phpStructure {fg = colours.blue_gray, gui = styles.bold}, -- Structure
        phpStringSingle {}, -- String
        phpStringDouble {}, -- String
        phpBacktick {}, -- String
        phpNumber {}, -- Number
        phpFloat {}, -- Float
        phpMethod {fg = colours.normal_gray}, -- Function
        phpFunctions {fg = colours.tan}, -- Function
        phpBaselib {}, -- Function
        phpRepeat {fg = colours.yellow}, -- Repeat
        phpConditional {}, -- Conditional
        phpLabel {}, -- Label
        phpStatement {}, -- Statement
        phpKeyword {classic.Keyword}, -- Statement
        phpType {classic.Type}, -- Type
        phpInclude {}, -- Include
        phpDefine {}, -- Define
        phpBackslashSequences {}, -- SpecialChar
        phpBackslashDoubleQuote {}, -- SpecialChar
        phpBackslashSingleQuote {}, -- SpecialChar
        phpParent {classic.Delimiter}, -- Delimiter
        phpBrackets {}, -- Delimiter
        phpIdentifierConst {}, -- Delimiter
        phpParentError {}, -- Error
        phpOctalError {}, -- Error
        phpInterpSimpleError {}, -- Error
        phpInterpBogusDollarCurley {}, -- Error
        phpInterpDollarCurly1 {}, -- Error
        phpInterpDollarCurly2 {}, -- Error
        phpInterpSimpleBracketsInner {}, -- String
        phpInterpSimpleCurly {}, -- Delimiter
        phpInterpVarname {}, -- Identifier
        phpTodo {}, -- Todo
        phpDocTodo {}, -- Todo
        phpMemberSelector {fg = colours.light_gray}, -- Structure
        phpIntVar {}, -- Identifier
        phpEnvVar {}, -- Identifier
        phpOperator {classic.Operator}, -- Operator
        phpVarSelector {fg = colours.light_gray}, -- Operator
        phpRelation {}, -- Operator
        phpIdentifier {classic.Identifier}, -- Identifier
        phpIdentifierSimply {}, -- Identifier
        phpStringDelimiter {fg = colours.light_gray},
        phpSuperglobals {fg = colours.lavender, gui = styles.bold},
        phpSpecialChar {fg = colours.blue_gray, gui = styles.bold},
        phpNullValue {classic.Boolean},
    }
end)

return p