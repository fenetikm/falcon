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
  lsp_underline = 'mixed',
  variation = 'classic',
}

if vim.g.falcon_settings ~= nil then
  for k,v in pairs(vim.g.falcon_settings) do
    settings[k] = v
  end
end

local lsp_setting_levels = {'error', 'warning', 'info', 'hint'}

if settings['lsp_settings'] ~= nil then
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
      error = 'undercurl',
      warning = 'underline',
      info = 'underdotted',
      hint = 'underdotted'
    }
  else
    -- just use the one setting for all
    settings['lsp_settings'] = {}
    for _,level in ipairs(lsp_setting_levels) do
      settings['lsp_settings'][level] = settings['lsp_underline']
    end
  end
end

return settings
