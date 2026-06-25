local lush = require('lush')
local modern = require('falcon.modern')

local p = lush(function()
  return {
    -- note: this needs to be a link, `bg = 'NONE'` doesn't work
    TroubleNormal { modern.Normal },
    TroubleNormalNC { modern.NormalNC },
  }
end)

return p
