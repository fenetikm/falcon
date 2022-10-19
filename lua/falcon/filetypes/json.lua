local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        jsonPadding            {}, -- Operator
        jsonString             {}, -- String
        jsonTest               {}, -- Label
        jsonEscape             {}, -- Special
        jsonNumber             {}, -- Number
        jsonBraces             {}, -- Delimiter
        jsonNull               {}, -- Function
        jsonBoolean            {fg = colours.red}, -- Boolean
        jsonKeyword            {}, -- Label
        jsonNumError           {}, -- Error
        jsonCommentError       {}, -- Error
        jsonSemicolonError     {}, -- Error
        jsonTrailingCommaError {}, -- Error
        jsonMissingCommaError  {}, -- Error
        jsonStringSQError      {}, -- Error
        jsonNoQuotesError      {}, -- Error
        jsonTripleQuotesError  {}, -- Error
        jsonQuote              {}, -- Quote
        jsonNoise              {}, -- Noise
        jsonKeywordMatch       {base.Delimiter},
    }
end)

return p
