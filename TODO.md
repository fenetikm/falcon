# Falcon Todo

## v3 outline
approach is to make simple incremental additions and see how it helps or not
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

### references
#### Tools
- https://github.com/rktjmp/lush.nvim interactive colour scheme tool
- https://github.com/tjdevries/colorbuddy.nvim a bunch of functions to help with creating schemes

#### Colour schemes that use Lua
- https://github.com/sainnhe/everforest
- https://github.com/sainnhe/sonokai
- https://github.com/savq/melange
- https://github.com/EdenEast/nightfox.nvim
- https://github.com/folke/tokyonight.nvim
- https://github.com/kvrohit/rasmus.nvim


## v3 todo
- setup src for lua
- readup on neovim color scheming, don't think there is much there?

## Todo
* statusline - airline check
* increase contrast in markdown for code blocks - maybe another gray...
* check gnome
* add in palette file with rbg and hex and names
* vscode scheme, in progress
* update other themes with indigo for selection colour
* kitty file for inclusion
* fzf colors, check PR

## VSCode refs
- https://github.com/sdras/night-owl-vscode-theme
- https://css-tricks.com/creating-a-vs-code-theme/
- https://marketplace.visualstudio.com/items?itemName=whizkydee.material-palenight-theme&WT.mc_id=csstricks-themearticle-sdras

## Someday
* L*a*b values
* Light version? probably not though. Maybe some contrast options.
* More support:
  * Mutt
  * TeX
  * highlight: https://gitlab.com/saalen/highlight
* Setup page under projects on michaelwelford.com, point to blog posts about it.
* Add in some lean prompt stuff, fix up brackets to be delimiter colour etc.
* Automate the screenshot taking
