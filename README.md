![falcon headshot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/headshot.jpg)

# Falcon

If you want a few less colours, a bit more gray, a super dark blue background and only a smattering of green, you want Falcon.

Furthermore, by design, Falcon doesn't include any magenta (replaced with orange in the terminal) so by using it _super_ sparingly it will cut through the noise where appropriate. Try it for the prompt (see the screenshots below for an example)!

![hero shot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/hero.png)

Coverage:

* Vim / Neovim
  * Plugins:
    * airline
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
    * vimwiki
  * Tweaked syntax highlighting:
    * C/C++
    * CSS
    * Gitconfig
    * Go
    * GraphQL
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
    * XML
    * Zsh
  * Terminal emulator (Neovim)
* Terminals:
  * [iTerm2](#iterm2)
  * [Kitty](#kitty)
  * [alacritty](#alacritty)
* Tools:
  * [Tmux](#tmux)
  * [exa](#exa)
  * [git](#git)
  * [PrismJS](#prismjs)
  * [Taskwarrior](#taskwarrior) and Timewarrior

Vim colour scheme built with [estilo](https://github.com/jacoborus/estilo). *Kudos!*

## Installation

### Prerequisites

This colour scheme assumes that you have a working terminal (see [iTerm2](#iterm2), [Kitty](#kitty) and [alacritty](#alacritty) below) with true colour (24bit rgb), **bold** and *italic* working. For Vim / Neovim and Tmux a similar assumption is made. How to do this is outside the scope of this README but I wish you well in your searching to get it working. Struggling with these small things (yet irksome) is part of the fun, amirite?!

To get going, either install this repo using a Vim / Neovim plugin manager or clone / download the repo to a folder of your choosing.

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

You also need 24-bit colour enabled with:

```viml
set termguicolors
```

To enable lightline support it is:

```viml
let g:falcon_lightline = 1
let g:lightline.colorscheme = 'falcon'
```

To enable airline support it is:

```viml
let g:falcon_airline = 1
let g:airline_theme = 'falcon'
```

(Thanks to [boweevil](https://github.com/boweevil) for adding this in!)

### iTerm2<a name="iterm2"></a>

To use in iTerm2 go to: `Preferences > Profiles > (Profile Name in left pane) > Colors > Color Presets... > Import... ` and then select the `falcon.itermcolors` file in the `iterm2` directory.

### Kitty<a name="kitty"></a>

[kitty project home page](https://github.com/kovidgoyal/kitty)

To use in kitty, copy and paste the values in the `kitty/kitty.conf` file into the bottom of your `kitty.conf` file (usually in `~/Library/Preferences/kitty/kitty.conf`).

_Protip_: if you are on macOS and using an external monitor, you may like my fork of [kitty](https://github.com/fenetikm/kitty) which alters the font rendering to beef it up a tad.

### alacritty<a name="alacritty"></a>

[alacritty project home page](https://github.com/jwilm/alacritty)

To use in alacritty, put the color configuration from `alacritty.yml` into your `alacritty.yml` file (usually in `~/Library/Preferences/alacritty/alacritty.yml` or `~/.config/alacritty/alacritty.yml`).

(Thanks to [timvisee](https://github.com/fenetikm/falcon/issues?q=is%3Apr+author%3Atimvisee) for that one!)

### Tmux<a name="tmux"></a>

A tmux configuration file is included in the `tmux` directory. It depends on the colours in your terminal being set to the Falcon colour scheme (e.g. iTerm2, Kitty or alacritty). To include into your tmux setup put something like the following in your `.tmux.conf`:

```
source-file /path/to/falcon/tmux/falcon.conf
```

Obviously this is an opinionated tmux layout but copy pasta as you see fit.

### exa<a name="exa"></a>

[exa home page](https://the.exa.website/)

Custom colours for exa are included in the `exa/EXA_COLORS` file. To use them simply include the following in your shell config. e.g. for ZSH:

```
source /path/to/falcon/exa/EXA_COLORS
```

### git<a name="git"></a>

To get the output of your `git log` commands looking _on point_, included is an example `.githelpers` file which is a tweaked version of [Gary Bernhardt's](https://github.com/garybernhardt/dotfiles) but with that Falcon flair.

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

### PrismJS<a name="prismjs"></a>

[PrismJS home page](https://github.com/PrismJS/prism)

Included in this repo are some PrismJS css and JS files to add in the Falcon colour scheme to your website for code syntax highlighting.

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

Currently only PHP has some extra love, will add in more as I need them.

### Taskwarrior and timewarrior<a name="taskwarrior"></a>

[Taskwarrior home page](https://taskwarrior.org)

Simply include the `taskwarrior/falcon.theme` file in your `.taskrc` e.g.

```
include ~/Documents/falcon/taskwarrior/falcon.theme
```

Also included is a timewarrior theme, simply include it in your `.timewarrior/timewarrior.cfg` e.g.

```
import /Users/me/Documents/falcon/timewarrior/falcon.theme
```

**Note** that the full path seems to be required.

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

## List of terminal colours by name

In lieu of updating the palette image which I have realised is not super helpful for when you want to know what the default terminal colours are by name, here is a list:

* colour 0: black
* colour 1: red
* colour 2: green
* colour 3: yellow
* colour 4: blue
* colour 5: orange (usually magenta)
* colour 6: cyan
* colour 7: light gray

* colour 8: bright black / bg colour
* colour 9: bright red
* colour 10: bright green
* colour 11: bright yellow
* colour 12: bright blue / blue gray
* colour 13: bright orange (usually magenta)
* colour 14: bright cyan
* colour 15: white

## Similar default terminal colours

Sometimes you want to use a colour from the main Falcon palette in the terminal. Sadly that isn't always easy and so what **_is_** easy, is to use a close match from the ANSI 256 palette.

(Refer to `estilo/palettes/falcon.yml` file for what matches up to what)

* *red*: 202
* *orange*: 208
* *yellow*: 220
* *green*: 107
* *blue_gray*: 110
* *br_yellow*: 230
* *br_green*: 193
* *br_blue*: 195
* *white*: 231
* *normal_gray*: 253
* *light_gray*: 249
* *mid_gray*: 245
* *mid_dark_gray*: 241
* *dark_gray*: 237
* *darker_gray*: 235
* *black*: 0
* *bg*: 232

## Troubleshooting

* **The colours look a bit off, especially inside of Neovim when also inside of tmux**

  Have you got `truecolor` support working? Have you `set termguicolors` ? See the [Neovim FAQ](https://github.com/neovim/neovim/wiki/FAQ) for starters.

* **In NeoVim, the background colour of the active window is lighter that the inactive window**

  The active window will take its colour from the terminal which is meant to be *darker* than the inactive window - check that your terminal colour is the Falcon background colour e.g. load the iTerm2 colours that are included.

* **Can you please support `insert name of other editing program`**

  This project is predominantly based around Vim / Neovim support followed secondarily by terminal support and then lastly by terminal tools. Although I am not opposed to other editors (well, only vehemently!) MRs are welcome :)

* **Can you please support `insert name of terminal program`**

  Possibly - most of the additional support I have been adding in is for tools that I have discovered and I continue to use. Please let me know!

## Big Thanks

* Estilo for making colour scheme management sane
* Inspiration: gruvbox for not being quite right to my tastes and thus being the seed of this project
* Everyone who Vims!

## License

Falcon is released under the [MIT license](https://github.com/fenetikm/falcon/blob/master/LICENSE).
