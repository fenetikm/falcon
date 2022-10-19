local lush = require("lush")
local colours = require('falcon.colours')
local base = require('falcon.base')

local p = lush(function()
    return {
        sqlStatement   {base.Function},
        sqlKeyword     {fg = colours.tan},
        sqlSpecial     {base.Number},
        sqlType        {fg = colours.blue_gray},
        sqlFunction    {base.Title},
        mysqlKeyword   {sqlKeyword},
        mysqlOperator  {base.Operator},
        mysqlFunction  {sqlType},
        mysqlStatement {sqlStatement},
        mysqlType      {sqlType},
        Quote          {base.Delimiter},
    }
end)

return p
