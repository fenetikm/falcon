![falcon headshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/headshot.jpg)

# Falcon

If you want a few less colours, a bit more gray, a super dark blue background and only a smattering of green, you want Falcon!

Furthermore, falcon doesn't include any magenta (replaced with orange in the terminal) so that you can then use it _super_ sparingly to cut through the noise where appropriate e.g. for the prompt (see the screenshots below for an example)

![hero shot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/hero.png)

Coverage:

* Vim / Neovim
  * Plugins:
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
    * Vim help
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
    * Sshconfig
    * Tmux
    * Twig
    * VimL
    * Yaml
    * Zsh
* Tmux
* iTerm2
* Kitty
* alacritty
* exa
* git
* PrismJS

Vim colour scheme built with [estilo](https://github.com/jacoborus/estilo). Kudos!

## Installation

### Prerequisites

This colour scheme assumes that you have a working terminal (see iTerm2, Kitty and alacritty below) with true colour (24bit rgb), **bold** and *italic* working. For Vim / Neovim and Tmux a similar assumption is made. How to do this is outside the scope of this README but I wish you well in your endeavours and searching to get it working :) Struggling with these small things (yet irksome!) is part of the fun amirite?!

To get going with the colour scheme, either install this repo using a Vim / Neovim plugin manager or clone / download the repo to a folder of your choosing.

### Vim / Neovim

Install manually or use a package manager.

e.g.

```viml
" vim-plug
Plug 'fenetikm/falcon'
```

If you put this repo somewhere else first, e.g. in `~/Documents` it would simply be:

```viml
" vim-plug
Plug '~/Documents/falcon'
```

Once installed set the colour scheme:

```viml
colorscheme falcon
```

To enable lightline support it is:

```viml
let g:falcon_lightline = 1
let g:lightline.colorscheme='falcon'
```

...one day I will get around to Airline / stock statusline support... probably. MRs welcome!

### iTerm2

To use in iTerm2, go to: `Preferences > Profiles > (Profile Name in left pane) > Colors > Color Presets... > Import... ` and then select the `falcon.itermcolors` file in the `iterm2` directory.

### Kitty

[kitty project home page](https://github.com/kovidgoyal/kitty)

To use in kitty, copy and paste the values in the `kitty.conf` into the bottom of your `kitty.conf` file (usually in `~/Library/Preferences/kitty/kitty.conf`).

### alacritty

[alacritty project home page](https://github.com/jwilm/alacritty)

To use in alacritty, put the color configuration from `alacritty.yml` into your `alacritty.yml` file (usually in `~/Library/Preferences/alacritty/alacritty.yml` or `~/.config/alacritty/alacritty.yml`).

### Tmux

A tmux configuration file is included in the `tmux` directory. It depends on the colours in your terminal being set to the falcon colour scheme (e.g. iTerm2, Kitty or alacritty). To include into your tmux setup put something like the following in your `.tmux.conf`:

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

To get the output of your `git log` commands looking _on point_, included is an example `.githelpers` file which is a tweaked version of [Gary Bernhardt's](https://github.com/garybernhardt/dotfiles) but with that falcon flair.

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
  current = yellow
  local = 241
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

### PrismJS

[PrismJS home page](https://github.com/PrismJS/prism)

Included in this repo are some PrismJS css and JS files to add in the falcon colour scheme to your website for code syntax highlighting.

Once you have PrismJS working on your website, simply include these files after the corresponding PrismJS inclusions, e.g.:

```html
<link href="css/prism.css" rel="stylesheet" />
<link href="css/prism-falcon.css" rel="stylesheet" />
```

and:

```html
<script src="js/prism.js"></script>
<script src="js/prism-falcon.php.js"></script>
```

Currently only PHP has some extra love, will add in more as I get to them.

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

### git

![git snapshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/snaps/gitr.png)

Screenshots taken on macOS running iTerm2, tmux and Neovim (where applicable). Font is FiraCode with ligatures enabled. In daily use I use kitty for it's sheer speed but iTerm2 makes perty piccies.

**Note:** Some syntax colour highlighting choices will depend on which syntax highlighting plugins you use. The above was created using the polyglot syntax vim plugin (except for Yaml).

## Similar default terminal colours

Sometimes you want to use a colour from the main falcon palette in the terminal. Sadly that isn't always easy and so what **_is_** easy, is to use a close match from the ANSI 256 palette.

(Refer to `estilo/palettes/falcon.yml` file for what matches up to what)

* *red*: 202
* *orange*: 208
* *yellow*: 220
* *green*: 107
* *blue*_gray: 110
* *br*_yellow: 230
* *br*_green: 193
* *br*_blue: 195
* *white*: 231
* *normal*_gray: 253
* *light*_gray 249
* *mid*_gray: 245
* *mid*_dark_gray: 241
* *dark*_gray: 237
* *darker*_gray: 235
* *black*: 0
* *bg*: 232

## Troubleshooting

* **The colours look a bit off, especially inside of Neovim when also inside of tmux**

  Have you got truecolor support working? See the [Neovim FAQ](https://github.com/neovim/neovim/wiki/FAQ) for starters.

* **Can you please support `insert name of other editing program`**

  This project is based around Vim / Neovim support predominantly followed secondarily by terminal support. Although I am not opposed to other editors (well, only vehemently!) MRs are welcome :)

## Big Thanks

* Estilo for making colour scheme management sane
* Inspiration: gruvbox for not being quite right to my tastes and thus being the seed of this project
* Everyone who Vims!
