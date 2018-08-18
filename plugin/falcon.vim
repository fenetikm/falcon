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
  hi ActiveWindow guibg=NONE | hi InactiveWindow guibg=#151521
  set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
endif

" Put in a background colour for gui
if has("gui_running")
  hi Normal guifg=#b4b4b9 ctermfg=188 guibg=#04041a ctermbg=233 gui=NONE cterm=NONE
  hi NonText guifg=#3a3a3d ctermfg=237 guibg=#04041a ctermbg=233 gui=NONE cterm=NONE
endif

" NeoVim terminal colors
if has ("nvim")
  let g:terminal_color_0 = '#000004'
  let g:terminal_color_1 = '#ff3600'
  let g:terminal_color_2 = '#718e3f'
  let g:terminal_color_3 = '#ffc552'
  let g:terminal_color_4 = '#635196'
  let g:terminal_color_5 = '#ff761a'
  let g:terminal_color_6 = '#34bfa4'
  let g:terminal_color_7 = '#b4b4b9'

  let g:terminal_color_8 = '#020221'
  let g:terminal_color_9 = '#ff8e78'
  let g:terminal_color_10 = '#b1bf75'
  let g:terminal_color_11 = '#ffd392'
  let g:terminal_color_12 = '#99a4bc'
  let g:terminal_color_13 = '#ffb07b'
  let g:terminal_color_14 = '#85ccbf'
  let g:terminal_color_15 = '#f8f8ff'

  let g:terminal_color_background = g:terminal_color_8
  let g:terminal_color_foreground = g:terminal_color_7
endif
