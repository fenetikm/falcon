local lush = require('lush')
local colours = require('falcon.colours')

local p = lush(function()
    return {
        TagbarComment             {fg = colours.dark_gray},
        TagbarKind                {fg = colours.blue_gray},
        TagbarNestedKind          {fg = colours.blue_gray},
        TagbarScope               {fg = colours.tan},
        TagbarType                {fg = colours.light_gray},
        TagbarSignature           {fg = colours.normal_gray},
        TagbarPseudoID            {fg = colours.normal_gray},
        TagbarFoldIcon            {fg = colours.mid_gray},
        TagbarHighlight           {fg = colours.normal_gray},
        TagbarVisibilityPublic    {fg = colours.green},
        TagbarVisibilityProtected {fg = colours.orange},
        TagbarVisibilityPrivate   {fg = colours.red},
    }
end)

return p
