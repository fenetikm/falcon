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
