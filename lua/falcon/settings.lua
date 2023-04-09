local function get(use_default)
  local settings = require('falcon.default_settings').get()

  if use_default == true then
    return settings
  end

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
end

return {get = get}
