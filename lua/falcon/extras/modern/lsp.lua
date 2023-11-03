local lush = require("lush")
local colours = require('falcon.colours')
local styles = require('falcon.styles')
local settings = require('falcon.settings').get()

local error = {}
local warning = {}
local hint = {}
local info = {}

if (settings.lsp_settings.error == 'inverse') then
  error = lush(function()
    return {
      DiagnosticUnderlineError {fg = colours.bg, bg = colours.mid_red}
    }
  end)
else
  error = lush(function()
    return {
      DiagnosticUnderlineError {gui = styles[settings.lsp_settings.error], sp = colours.red}
    }
  end)
end

if (settings.lsp_settings.warning == 'inverse') then
  warning = lush(function()
    return {
      DiagnosticUnderlineWarn {fg = colours.bg, bg = colours.mid_yellow}
    }
  end)
else
  warning = lush(function()
    return {
      DiagnosticUnderlineWarn {gui = styles[settings.lsp_settings.warning], sp = colours.yellow}
    }
  end)
end

if (settings.lsp_settings.hint == 'inverse') then
  hint = lush(function()
    return {
      DiagnosticUnderlineHint {fg = colours.bg, bg = colours.dark_tan}
    }
  end)
else
  hint = lush(function()
    return {
      DiagnosticUnderlineHint {gui = styles[settings.lsp_settings.hint], sp = colours.dark_tan}
    }
  end)
end

if (settings.lsp_settings.info == 'inverse') then
  info = lush(function()
    return {
      DiagnosticUnderlineInfo {fg = colours.bg, bg = colours.blue_gray}
    }
  end)
else
  info = lush(function()
    return {
      DiagnosticUnderlineInfo {gui = styles[settings.lsp_settings.info], sp = colours.mid_gray}
    }
  end)
end

local p = lush(function()
    return {
        LspCodeLens                 { } , -- Used to colour the virtual text of the codelens. See |nvim_buf_set_extmark()|.
        LspCodeLensSeparator        { } , -- Used to colour the separator between two or more code lens.
        LspReferenceRead            {gui = styles.underdotted, sp = colours.light_gray},
        LspReferenceText            {gui = styles.underdotted, sp = colours.light_gray},
        LspReferenceWrite           {gui = styles.underdotted, sp = colours.light_gray},
        LspSignatureActiveParameter {gui = styles.underline} , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

        DiagnosticError             {fg = colours.mid_red}, -- Default error diagnostics
        DiagnosticHint              {fg = colours.darker_tan}, -- Default hint diagnostics
        DiagnosticInfo              {fg = colours.mid_gray}, -- Default info diagnostic
        DiagnosticWarn              {fg = colours.mid_yellow}, -- Default warn diagnostic
        DiagnosticFloatingError     { } , -- Used to colour "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
        DiagnosticFloatingHint      { } , -- Used to colour "Hint" diagnostic messages in diagnostics float.
        DiagnosticFloatingInfo      { } , -- Used to colour "Info" diagnostic messages in diagnostics float.
        DiagnosticFloatingWarn      { } , -- Used to colour "Warn" diagnostic messages in diagnostics float.
        DiagnosticSignError         {fg = colours.mid_red},
        DiagnosticSignHint          {fg = colours.darker_tan},
        DiagnosticSignInfo          {fg = colours.mid_gray},
        DiagnosticSignWarn          {fg = colours.mid_yellow},
        DiagnosticVirtualTextError  {fg = colours.mid_red, gui = styles.italic},
        DiagnosticVirtualTextHint   {fg = colours.darker_tan, gui = styles.italic},
        DiagnosticVirtualTextInfo   {fg = colours.mid_gray, gui = styles.italic},
        DiagnosticVirtualTextWarn   {fg = colours.mid_yellow, gui = styles.italic},
        ReferenceRead               {gui = styles.underline},
        ReferenceText               {gui = styles.underline},
        ReferenceWrite              {gui = styles.underline},
    }
end)

return lush.merge({error, warning, hint, info, p})
