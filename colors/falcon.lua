vim.opt.background = 'dark'
vim.g.colors_name = 'falcon'

package.loaded['falcon.base'] = nil

require('lush')(require('falcon.base'))
