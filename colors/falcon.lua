vim.opt.background = 'dark'
vim.g.colors_name = 'falcon'

package.loaded['falcon'] = nil

require('lush')(require('falcon').setup())
