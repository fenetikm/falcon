local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        LspDiagnosticsDefaultError           {fg = colours.mid_red},
        LspDiagnosticsDefaultWarning         {fg = colours.mid_yellow},
        LspDiagnosticsDefaultInformation     {fg = colours.mid_gray},
        LspDiagnosticsDefaultHint            {fg = colours.dark_tan},
        LspReferenceRead                     {gui = styles.underline},
        LspReferenceText                     {gui = styles.underline},
        LspReferenceWrite                    {gui = styles.underline},
        LspDiagnosticsVirtualTextError       {fg = colours.mid_red, gui = styles.italic},
        LspDiagnosticsVirtualTextWarning     {fg = colours.mid_yellow, gui = styles.italic},
        LspDiagnosticsVirtualTextHint        {fg = colours.dark_tan, gui = styles.italic},
        LspDiagnosticsVirtualTextInformation {fg = colours.mid_gray, gui = styles.italic},
        LspDiagnosticsUnderlineError         {gui = styles.undercurl, guisp = colours.mid_red},
        LspDiagnosticsUnderlineWarning       {gui = styles.undercurl, guisp = colours.mid_yellow},
        LspDiagnosticsUnderlineHint          {gui = styles.undercurl, guisp = colours.dark_tan},
        LspDiagnosticsUnderlineInformation   {gui = styles.undercurl, guisp = colours.mid_gray},
        DiagnosticSignError                  {fg = colours.mid_red},
        DiagnosticSignWarn                   {fg = colours.mid_yellow},
        DiagnosticSignInfo                   {fg = colours.mid_gray},
        DiagnosticSignHint                   {fg = colours.dark_tan},
        DiagnosticError                      {fg = colours.mid_red},
        DiagnosticWarn                       {fg = colours.mid_yellow},
        DiagnosticInfo                       {fg = colours.mid_gray},
        DiagnosticHint                       {fg = colours.dark_tan},
        ReferenceRead                        {gui = styles.underline},
        ReferenceText                        {gui = styles.underline},
        ReferenceWrite                       {gui = styles.underline},
        DiagnosticVirtualTextError           {fg = colours.mid_red, gui = styles.italic},
        DiagnosticVirtualTextWarn            {fg = colours.mid_yellow, gui = styles.italic},
        DiagnosticVirtualTextHint            {fg = colours.dark_tan, gui = styles.italic},
        DiagnosticVirtualTextInfo            {fg = colours.mid_gray, gui = styles.italic},
        DiagnosticUnderlineError             {gui = styles.undercurl, guisp = colours.mid_red},
        DiagnosticUnderlineWarn              {gui = styles.undercurl, guisp = colours.mid_yellow},
        DiagnosticUnderlineHint              {gui = styles.undercurl, guisp = colours.dark_tan},
        DiagnosticUnderlineInfo              {gui = styles.undercurl, guisp = colours.mid_gray},
    }
end)

return p
