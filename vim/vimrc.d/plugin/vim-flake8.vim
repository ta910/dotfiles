autocmd FileType python nnoremap <C-f> :call Flake8()<CR>
let g:flake8_quickfix_height=20 " Quickfixの高さ
let g:flake8_show_in_gutter=1  " 左端にシンボルを表示
let g:flake8_show_in_file=1  " ファイル内にマークを表示
