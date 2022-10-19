local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        yamlTodo                     {}, -- Todo
        yamlComment                  {}, -- Comment
        yamlDocumentStart            {}, -- PreProc
        yamlDocumentEnd              {}, -- PreProc
        yamlDirectiveName            {}, -- Keyword
        yamlTAGDirective             {}, -- yamlDirectiveName
        yamlTagHandle                {}, -- String
        yamlTagPrefix                {}, -- String
        yamlYAMLDirective            {}, -- yamlDirectiveName
        yamlReservedDirective        {}, -- Error
        yamlYAMLVersion              {}, -- Number
        yamlString                   {}, -- String
        yamlFlowString               {}, -- yamlString
        yamlFlowStringDelimiter      {fg = colours.normal_gray}, -- yamlString
        yamlEscape                   {}, -- SpecialChar
        yamlSingleEscape             {}, -- SpecialChar
        yamlBlockCollectionItemStart {fg = colours.orange}, -- Label
        yamlBlockMappingKey          {fg = colours.blue_gray}, -- Identifier
        yamlBlockMappingMerge        {}, -- Special
        yamlFlowMappingKey           {fg = colours.normal_gray}, -- Identifier
        yamlFlowMappingMerge         {}, -- Special
        yamlMappingKeyStart          {}, -- Special
        yamlFlowIndicator            {base.Delimiter}, -- Special
        yamlKeyValueDelimiter        {base.Delimiter}, -- Special
        yamlConstant                 {}, -- Constant
        yamlNull                     {fg = colours.normal_gray, gui = styles.italic}, -- yamlConstant
        yamlBool                     {base.Number}, -- yamlConstant
        yamlAnchor                   {}, -- Type
        yamlAlias                    {}, -- Type
        yamlNodeTag                  {}, -- Type
        yamlInteger                  {}, -- Number
        yamlFloat                    {}, -- Float
        yamlTimestamp                {}, -- Number
        yamlPlainScalar              {fg = colours.normal_gray},
    }
end)

return p
