# The Falcon colour scheme
![falcon logo](https://raw.githubusercontent.com/fenetikm/falcon/master/support/logo2.png)

A colour scheme for terminals, Neovim, Vim and friends.

This is **v3.0** including:
- built on [lush](https://github.com/rktjmp/lush.nvim) to support fine grained colour tweaking
- introduction of a new _modern_ variation...

Falcon is a work horse of a colour scheme that will (hopefully) stand the test of time - with fewer gimmicks, a more restrained colour palette but with a splash just enough to distinguish everything semantically as well a touch of delight thrown in.

![hero shot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/hero2.png)

## Get started
### Quick start
#### Neovim
First include the colour scheme using your favourite method. e.g. using [packer](https://github.com/wbthomason/packer.nvim):
```lua
use {'fenetikm/falcon', requires = {'rktjmp/lush.nvim'}}
```

Then load 'er up in your `init.lua` with:
```lua
package.loaded['falcon'] = nil
require('lush')(require('falcon').setup())
```

This will give you the _classic_ experience - for something different try the _modern_ variation by putting the following before the above:
```lua
vim.g.falcon_settings = {
  variation = 'modern'
}
```

You can see all the setting options on the [installation page](https://github.com/fenetikm/falcon/wiki/Installation).

#### Vim
First include the colour scheme using your favourite method. e.g. using [vim plug](https://github.com/junegunn/vim-plug):
```viml
Plug 'fenetikm/falcon'
```

Then load 'er up in your vimrc with:
```viml
set termguicolors
colorscehem falcon
```

You can see all the setting options on the [installation page](https://github.com/fenetikm/falcon/wiki/Installation).

### Moar
Head to [the wiki installation page](https://github.com/fenetikm/falcon/wiki/Installation) to get going. Also have a look through what plugins and programs are [covered](https://github.com/fenetikm/falcon/wiki/Coverage), browse the [screenshot gallery](https://github.com/fenetikm/falcon/wiki/Screenshots), the [palette](https://github.com/fenetikm/falcon/wiki/Palette) and if you need a little bit of help there is also the [troubleshooting section and
FAQ](https://github.com/fenetikm/falcon/wiki/Troubleshooting-&-FAQ).

## Developing
### Generating extra files
Generating the extra files, such as for kitty and other terminals, is accomplished using [Shipwright](https://github.com/rktjmp/shipwright.nvim) via the `shipwright_build.lua` file by running `:Shipwright ./lua/falcon/shipwright/shipwright_build.lua`.

## Contact
If you want to get in touch please [drop me a line](https://michaelwelford.com/contact).

## Big Thanks
- v2 built with [estilo](https://github.com/jacoborus/estilo), gracias!
- v3 built with [lush](https://github.com/rktjmp/lush.nvim) and [Shipwright](https://github.com/rktjmp/shipwright.nvim)
- Everyone who Vims, f'yeah!

## License
Falcon is released under the [MIT license](https://github.com/fenetikm/falcon/blob/master/LICENSE).
