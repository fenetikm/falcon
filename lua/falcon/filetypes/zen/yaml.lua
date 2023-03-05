local lush = require("lush")
local colours = require('falcon.colours')
local zen = require('falcon.zen')
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
        yamlFlowStringDelimiter      {}, -- yamlString
        yamlEscape                   {}, -- SpecialChar
        yamlSingleEscape             {}, -- SpecialChar
        yamlBlockCollectionItemStart {}, -- Label
        yamlBlockMappingKey          {zen.Keyword}, -- Identifier
        yamlBlockMappingMerge        {}, -- Special
        yamlFlowMappingKey           {}, -- Identifier
        yamlFlowMappingMerge         {}, -- Special
        yamlMappingKeyStart          {}, -- Special
        yamlFlowIndicator            {}, -- Special
        yamlKeyValueDelimiter        {}, -- Special
        yamlConstant                 {}, -- Constant
        yamlNull                     {}, -- yamlConstant
        yamlBool                     {}, -- yamlConstant
        yamlAnchor                   {zen.Normal}, -- Type
        yamlAlias                    {zen.Normal}, -- Type
        yamlNodeTag                  {}, -- Type
        yamlInteger                  {}, -- Number
        yamlFloat                    {}, -- Float
        yamlTimestamp                {}, -- Number
        yamlPlainScalar              {},
    }
end)

return p
