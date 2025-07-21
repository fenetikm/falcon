function! custom#RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

" Trim the white space from a file
function! custom#TrimWhiteSpace()
  %s/\s\+$//e
endfunction

" Insert text at the cursor
function! custom#InsertText(text)
  let cur_line_num = line('.')
  let cur_col_num = col('.')
  let orig_line = getline('.')
  let modified_line =
      \ strpart(orig_line, 0, cur_col_num - 1)
      \ . a:text
      \ . strpart(orig_line, cur_col_num - 1)
  " Replace the current line with the modified line.
  call setline(cur_line_num, modified_line)
  " Place cursor on the last character of the inserted text.
  call cursor(cur_line_num, cur_col_num + strlen(a:text))
endfunction

