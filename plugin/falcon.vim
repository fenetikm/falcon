" required as colors will come from terminal without
let g:fzf_colors =
\ { 'fg':      ['fg', 'Comment'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Normal'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Keyword'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" NeoVim has support for changing background colour depending on active or not
if exists('+winhighlight')
  hi ActiveWindow guibg=NONE | hi InactiveWindow guibg=#141420
  set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endif

" Put in a background colour for gui
if has("gui_running")
  hi Normal guifg=#d4d4d9 ctermfg=188 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
  hi NonText guifg=#3e3e40 ctermfg=237 guibg=#0b0b1a ctermbg=233 gui=NONE cterm=NONE
endif

" NeoVim terminal colors
if has ("nvim")
  let g:terminal_color_0 = '#000002'
  let g:terminal_color_1 = '#ff4000'
  let g:terminal_color_2 = '#598033'
  let g:terminal_color_3 = '#ffbf00'
  let g:terminal_color_4 = '#306cbf'
  let g:terminal_color_5 = '#ff8000'
  let g:terminal_color_6 = '#30bfa7'
  let g:terminal_color_7 = '#d4d4d9'

  let g:terminal_color_8 = '#0b0b1a'
  let g:terminal_color_9 = '#ff794c'
  let g:terminal_color_10 = '#85a663'
  let g:terminal_color_11 = '#ffd966'
  let g:terminal_color_12 = '#8fa3bf'
  let g:terminal_color_13 = '#ffac59'
  let g:terminal_color_14 = '#85ccc0'
  let g:terminal_color_15 = '#fdfdff'

  let g:terminal_color_background = g:terminal_color_8
  let g:terminal_color_foreground = g:terminal_color_7
endif
