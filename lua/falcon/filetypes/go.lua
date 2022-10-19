local lush = require("lush")
local colours = require('falcon.colours')

local p = lush(function()
    return {
        goDirective      {}, -- Statement
        goDeclaration    {}, -- Keyword
        goDeclType       {}, -- Keyword
        goStatement      {}, -- Statement
        goConditional    {}, -- Conditional
        goLabel          {fg = colours.yellow}, -- Label
        goRepeat         {fg = colours.yellow}, -- Repeat
        goType           {}, -- Type
        goSignedInts     {}, -- Type
        goUnsignedInts   {}, -- Type
        goFloats         {}, -- Type
        goComplexes      {}, -- Type
        goBuiltins       {fg = colours.yellow}, -- Keyword
        goConstants      {}, -- Keyword
        goComment        {}, -- Comment
        goTodo           {}, -- Todo
        goEscapeOctal    {}, -- goSpecialString
        goEscapeC        {}, -- goSpecialString
        goEscapeX        {}, -- goSpecialString
        goEscapeU        {}, -- goSpecialString
        goEscapeBigU     {}, -- goSpecialString
        goSpecialString  {}, -- Special
        goEscapeError    {}, -- Error
        goString         {}, -- String
        goRawString      {}, -- String
        goCharacter      {}, -- Character
        goDecimalInt     {}, -- Integer
        goHexadecimalInt {}, -- Integer
        goOctalInt       {}, -- Integer
        Integer          {}, -- Number
        goFloat          {}, -- Float
        goImaginary      {}, -- Number
        goExtraType      {}, -- Type
        goSpaceError     {}, -- Error
        goVar            {fg = colours.blue_gray},
        goPackage        {fg = colours.tan},
        goImport         {goPackage},
    }
end)

return p
