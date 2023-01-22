local settings = require('falcon.settings')

local styles = {
  bold             = 'bold',
  italic           = 'italic',
  underline        = 'underline',
  undercurl        = 'undercurl',
  strikethrough    = 'strikethrough',
  italic_comments  = 'italic',
  underdotted      = 'underdotted',
  underdashed      = 'underdashed'
}

if not settings.italic_comments then
  styles.italic_comments = 'NONE'
end

if not settings.bold then
  styles.bold = ''
end

if not settings.underline then
  styles.underline = ''
end

if not settings.undercurl then
  styles.undercurl = ''
end

if settings.underline_for_undercurl then
  styles.undercurl = 'underline'
end

if settings.underline_for_underdotted then
  styles.underdotted = 'underline'
end

if not settings.strikethrough then
  styles.strikethrough = ''
end

return styles
