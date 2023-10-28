local function get()
  return {
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
    highlights = 'default',
  }
end

return {get = get}
