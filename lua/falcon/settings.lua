local settings = {
  bold = true,
  italic = true,
  underline = true,
  undercurl = true,
  strikethrough = true,
  italic_comments = true,
  underline_for_undercurl = false,
  transparent_bg = false,
  inactive_bg = false,
  variation = 'classic',
}

if vim.g.falcon_settings ~= nil then
  for k,v in pairs(vim.g.falcon_settings) do
    settings[k] = v
  end
end

return settings
