local lush = require("lush")
local colours = require('falcon.colours')
local classic = require('falcon.classic')
local base_ui = require('falcon.base_ui')

local p = lush(function()
    return {
        sqlStatement   {classic.Function},
        sqlKeyword     {fg = colours.tan},
        sqlSpecial     {classic.Number},
        sqlType        {fg = colours.blue_gray},
        sqlFunction    {base_ui.Title},
        mysqlKeyword   {sqlKeyword},
        mysqlOperator  {classic.Operator},
        mysqlFunction  {sqlType},
        mysqlStatement {sqlStatement},
        mysqlType      {sqlType},
        Quote          {classic.Delimiter},
    }
end)

return p
