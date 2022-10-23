local settings = {
  bold = true,
  italic = true,
  underline = true,
  undercurl = true,
  strikethrough = true,
  italic_comments = true,
  underline_for_undercurl = false,
}

if vim.g.falcon_settings ~= nil then
  for k,v in pairs(vim.g.falcon_settings) do
    settings[k] = v
  end
end

return settings
