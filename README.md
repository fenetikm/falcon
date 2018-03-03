![falcon headshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/headshot.jpg)

# Falcon

If you want a few less colours (not a rainbow), a bit more grey, a super dark blue background and only a smattering of green, you want Falcon!

Coverage:
* Vim / Neovim
* Vim plugins:
  * Ale
  * fugitive
  * fzf
  * lightline
  * nerdtree
  * startify
  * tagbar
  * ultisnips
  * vim-gitgutter
  * vim-signature
* Syntax:
  * CSS
  * Gitconfig
  * Go
  * HTML
  * Javascript
  * JSON
  * Jsx
  * Lua
  * Markdown
  * PHP
  * Python
  * Ruby
  * Shell script
  * Tmux
  * Twig
  * VimL
  * Yaml
  * Zsh
* Tmux
* Kitty
* iTerm2
* git pretty log
* exa

Vim colour scheme built with [estilo](https://github.com/jacoborus/estilo). Kudos!

## Installation

### Prerequisites

Colour scheme assumes that you have a working terminal (see iTerm2 and Kitty below) with **bold** and *italic* working. For Vim / Neovim and Tmux a similar assumption is made.

### Vim / Neovim

Install manually or use a package manager.

e.g.

```viml
" vim-plug
Plug 'fenetikm/falcon'
```

Once installed set the colour scheme:

```viml
let g:falcon_lightline = 1
let g:lightline.colorscheme='falcon'
colorscheme falcon
```

### iTerm2

To use in iTerm2, go to: `Preferences > Profiles > (Profile Name in left pane) > Colors > Color Presets... > Import... ` and then select the `falcon.itermcolors` file in the `iterm2` directory.

### Kitty

[kitty project home page](https://github.com/kovidgoyal/kitty)

To use in kitty, copy and paste the values in the `kitty.conf` into the bottom of your `kitty.conf` file (usually in `~/Library/Preferences/kitty/kitty.conf`).

### Tmux

A tmux configuration file is included in the `tmux` directory. It depends on the colours in your terminal being set to the falcon colour scheme (e.g. iTerm2 or Kitty). To include into your tmux setup put something like the following in your `.tmux.conf`:

```
source-file /path/to/falcon/tmux/falcon.conf
```

Obviously this is an opinionated tmux layout but copy pasta as you see fit.

### exa

[exa home page](https://the.exa.website/)

Custom colours for exa are included in the `exa/EXA_COLORS` file. To use them simply include them into your shell config. ZSH e.g.

```
source /path/to/falcon/exa/EXA_COLORS
```

### git

Included is an example `.githelpers` file which is a tweaked version of [Gary Bernhardt's](https://github.com/garybernhardt/dotfiles) coloured for falcon.

One way of using this is by putting the following (thanks again Gary!) in your `.gitconfig`:

```gitconfig
[alias]
  r = !GIT_NO_PAGER=1 git l -30
  l = "!. ~/.githelpers && pretty_git_log"
```

To then use it you would just do `git r` for a short git log listing or `git l` for a long log listing.

Optionally you could additionally put the following in your `.gitconfig`:

```gitconfig
[color]
  ui = auto

[color "branch"]
  current = yellow reverse
  local = yellow
  remote = green

[color "diff"]
  meta = yellow
  frag = magenta
  old = red
  new = green

[color "status"]
  added = green
  changed = yellow
  untracked = magenta
```

## Palette

![swatches](https://raw.githubusercontent.com/fenetikm/falcon/master/support/swatches.png)

## Screenshots

### PHP

![php snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/php.png)

### VimL

![vimL snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/vimL.png)

### CSS

![css snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/css.png)

### JS

![js snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/js.png)

### JSON

![json snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/json.png)

### twig

![twig snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/twig.png)

### exa

![exa snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/exa.png)

### git pretty log

![git snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/gitr.png)

Screenshots taken on macOS running iTerm2, tmux and neovim (where applicable). Font is FiraCode with ligatures enabled. In daily use I use kitty for it's sheer speed but iTerm2 makes perty piccies.

**Note:** Some syntax colour highlighting choices will depend on which syntax highlighting plugins you use. The above was created using the polyglot syntax plugin (except for Yaml).

## Similar default terminal colours

(Refer to the estilo falcon palette for names)

* red: 202
* orange: 208
* yellow: 220
* green: 107
* blue_gray: 110
* br_yellow: 230
* br_green: 193
* br_blue: 195
* white: 231
* normal_gray: 253
* light_gray 249
* mid_gray: 245
* mid_dark_gray: 241
* dark_gray: 237
* darker_gray: 235
* black: 0
* bg: 232

## Big Thanks

* Estilo for making colour scheme management sane
* Inspiration: gruvbox
* Everyone who Vims

More to come!
