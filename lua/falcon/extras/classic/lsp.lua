local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')

local p = lush(function()
    return {
        LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
        LspReferenceRead            {gui = styles.underline},
        LspReferenceText            {gui = styles.underline},
        LspReferenceWrite           {gui = styles.underline},
        LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        DiagnosticError             {fg = colours.mid_red},
        DiagnosticHint              {fg = colours.dark_tan},
        DiagnosticInfo              {fg = colours.mid_gray},
        DiagnosticWarn              {fg = colours.mid_yellow},
        DiagnosticFloatingError     { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        DiagnosticFloatingHint      { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
        DiagnosticFloatingInfo      { } , -- Used to color "Info" diagnostic messages in diagnostics float.
        DiagnosticFloatingWarn      { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
        DiagnosticSignError         {fg = colours.mid_red},
        DiagnosticSignHint          {fg = colours.dark_tan},
        DiagnosticSignInfo          {fg = colours.mid_gray},
        DiagnosticSignWarn          {fg = colours.mid_yellow},
        DiagnosticUnderlineError    {bg = colours.mid_red, gui = styles.undercurl, guisp = colours.mid_red},
        DiagnosticUnderlineHint     {gui = styles.undercurl, guisp = colours.dark_tan},
        DiagnosticUnderlineInfo     {gui = styles.undercurl, guisp = colours.mid_gray},
        DiagnosticUnderlineWarn     {gui = styles.undercurl, guisp = colours.mid_yellow},
        DiagnosticVirtualTextError  {fg = colours.mid_red, gui = styles.italic},
        DiagnosticVirtualTextHint   {fg = colours.dark_tan, gui = styles.italic},
        DiagnosticVirtualTextInfo   {fg = colours.mid_gray, gui = styles.italic},
        DiagnosticVirtualTextWarn   {fg = colours.mid_yellow, gui = styles.italic},
        ReferenceRead               {gui = styles.underline},
        ReferenceText               {gui = styles.underline},
        ReferenceWrite              {gui = styles.underline},
    }
end)

return p
