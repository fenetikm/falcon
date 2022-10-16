vim.opt.background = 'dark'
vim.g.colors_name = 'falcon'

package.loaded['lush_theme.falcon'] = nil

require('lush')(require('lush_theme.falcon'))
