# Falcon Todo

## Todo v3
- try out using lush, specifically:
  * having a base and other, merge
  * turning other on and off via command?
  * turn on / off, there is a way to do that with lush, can create a command
- output kitty conf file using template
- other terminal files
- remove estilo remnants, can delete as we go
- lightline and airline support?
- settings:
  * contrast
  * change background on focus
  * transparent background
  * warm / cold
  * see https://github.com/mcchrish/zenbones.nvim/blob/main/doc/zenbones.md for an example around percentage colouring
- help file
- more plugins:
  * aerial https://github.com/stevearc/aerial.nvim
  * barbar https://github.com/romgrk/barbar.nvim
  * hop https://github.com/phaazon/hop.nvim
  * nvim-dap https://github.com/mfussenegger/nvim-dap
  * nvim-dap-ui https://github.com/rcarriga/nvim-dap-ui
  * nvim-navic https://github.com/SmiteshP/nvim-navic
  * nvim-ts-rainbow https://github.com/p00f/nvim-ts-rainbow
  * packer https://github.com/wbthomason/packer.nvim
  * trouble https://github.com/folke/trouble.nvim
  * neotest https://github.com/nvim-neotest/neotest
  * which-key https://github.com/folke/which-key.nvim
  * neo-tree https://github.com/nvim-neo-tree/neo-tree.nvim
  * neogit
- create equiv to falcon.vim
- vim export possible? should be using shipwright
- submit PR to lush.nvim for inclusion of falcon colour scheme

### What
- dynamic colour scheme, lua based for neovim, use current colours, could tweak a bit?
- more minimal in colour use in general
- different modes:
  * LSP (highlight just the LSP things)
    + minimal with colours for errors
  * outline (can this be done with dynamic treesitter queries?)
  * comments are more important
  * traditional (all things at once)
  * minimal (as little as possible):
    + strings are underlined or diff background colour
    + comments in italic still? but same colour otherwise
    + keywords vs non-keywords
  * clear (good for markdown where the things like `#`, `_` etc. are dropped back)
- possibility to output colours to other files using simple templating
- programmatically tweak things such as:
  * increase contrast
  * turn things off / on e.g. bold, italic, underline
- single colour statusline vs full colour
- chrome full colour or mono
- syntax full colour or minimal
- light mode? change warmth / cool dependent on season / time

### How
- contrast: define different colours to reference - apprentice does this, could be done programmatically maybe using colour commands like saturation, lightness etc.
- how to turn modes off and on? commands, refreshes all the highlights
- estilo does some rounding to closest cterm vals, maybe not care? someday
- lush allows merge, yay, probably go with this
- `nvim_set_hl` sholuld work now, 0.7
- TIL: https://www.hsluv.org/ colour space like HSL but more "tuned" for humans re lightness, saturation etc.
- `pumblend` and `winblend`, blend is just for things that overlay
- resty templating for other stuff
- config file is external, have a dist, then generate

#### Lush stuff
special keys:
> bold:          boolean, enables or disables bold.
> italic:        boolean, enables or disables italics.
> underline:     boolean, enables or disables underline.
> underlineline: boolean, enables or disables double underline.
> underdouble:   boolean, underlineline in nvim 0.8
> undercurl:     boolean, enables or disables undercurl.
> underdot:      boolean, enables or disables underdot.
> underdotted:   boolean, underdot in nvim 0.8
> underdash:     boolean, enables or disables underdash.
> underdashed:   boolean, underdash in nvim 0.8
> strikethrough: boolean, enables or disables strikethrough.
> reverse:       boolean, enables or disables flipping fg and bg values.
> standout:      boolean, enables or disables standout.
> nocombine:     boolean, enables or disables nocombine.

### references
#### Rando
- https://github.com/mcchrish/zenbones.nvim Very nice, kind of thing we are going for, also outputs terminal files
- https://github.com/mcchrish/zenbones.nvim/blob/main/doc/zenbones.md#create-your-own-colorscheme good inspiration re configurability - maybe too much?

#### Tools
- https://github.com/rktjmp/lush.nvim interactive colour scheme tool
- https://github.com/tjdevries/colorbuddy.nvim a bunch of functions to help with creating schemes
- https://github.com/bungle/lua-resty-template lua resty templating, says html but maybe other?

#### Colour schemes that use Lua or related
- https://github.com/sainnhe/everforest
- https://github.com/sainnhe/sonokai
- https://github.com/savq/melange
- https://github.com/EdenEast/nightfox.nvim
- https://github.com/folke/tokyonight.nvim
- https://github.com/kvrohit/rasmus.nvim
- https://github.com/mcchrish/zenbones.nvim/

## VSCode refs
- https://github.com/sdras/night-owl-vscode-theme
- https://css-tricks.com/creating-a-vs-code-theme/
- https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme&WT.mc_id=csstricks-themearticle-sdras

## Someday
* increase contrast in markdown for code blocks - maybe another gray...
* check gnome
* add in palette file with rbg and hex and names
* vscode scheme
* update other themes with indigo for selection colour
* fzf colors, check PR
* Light version?
* More support:
  * Mutt
  * TeX
* Setup page under projects on michaelwelford.com, point to blog posts about it.
* Add in some lean prompt stuff, fix up brackets to be delimiter colour etc.
* Automate the screenshot taking
