local settings = {
  bold = true,
  italic = true,
  underline = true,
  undercurl = true,
  strikethrough = true,
  italic_comments = true,
  underline_for_undercurl = false,
  underline_for_underdotted = false,
  transparent_bg = false,
  inactive_bg = false,
  lsp_underline = 'errrr',
  variation = 'classic',
}

if vim.g.falcon_settings ~= nil then
  for k,v in pairs(vim.g.falcon_settings) do
    settings[k] = v
  end
end

local lsp_setting_levels = {'error', 'warning', 'info', 'hint'}

-- resolve lsp settings
if settings['lsp_settings'] ~= nil then
  -- specific settings
elseif settings['lsp_underline'] ~= nil then
  if settings['lsp_underline'] == 'errrr' then
    settings['lsp_settings'] = {
      error = 'inverse',
      warning = 'underdotted',
      info = 'underdotted',
      hint = 'underdotted'
    }
  elseif settings['lsp_underline'] == 'mixed' then
    settings['lsp_settings'] = {
      error = 'inverse',
      warning = 'underline',
      info = 'underdotted',
      hint = 'underdotted'
    }
  else
    settings['lsp_settings'] = {}
    for _,line in ipairs(lsp_setting_levels) do
      settings['lsp_settings'][line] = settings['lsp_underline']
    end
  end
end

return settings
