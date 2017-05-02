"大文字小文字を区別しない
let g:unite_enable_ignore_case=1
let g:unite_enable_smart_case=1
" 入力モードで開始
let g:unite_enable_start_insert=1

" use ag
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_max_candidates = 200
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=200
"====== Normal
"--------------------------------------------------
" The prefix key
nnoremap [unite] <Nop>
nmap <Space>u [unite]

" unite.vim keymap
"ヤンクの履歴
nnoremap <silent> ,uy :<C-u>Unite history/yank<<CR>
nnoremap <silent> ,ub:<C-u>Unite buffer<CR>
nnoremap <silent> ,uf:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> <Leader>ur:<C-u>Unite -buffer-name=register register<CR>
" 最近使ったファイルの一覧とバッファを表示
nnoremap <silent> <Leader>ub:<C-u>Unite file_mru buffer<CR>
nnoremap <silent> <Leader>ub:<C-u>Unite file_rec/async:!<CR>
" grep検索
nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-w><CR>
"grep検索結果の際呼び出し
nnoremap <silent> ,cr :<C-u>UniteResume search-buffer<CR>
nnoremap <silent> ,cl :<C-u>UniteWithCursorWord lines<CR>
"=== grep.vim
"==============================================================================================
let Grep_Skip_Dirs = '.git nodemodules '
let Grep_Default_Options = '-I'
let Grep_Skip_Files = '*~ *.bak'


"unite use ag(The Silver Search)
if executable('ag')
        let g:unite_source_grep_command = 'ag'
        let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
        let g:unite_source_grep_recursive_opt = ''
endif
