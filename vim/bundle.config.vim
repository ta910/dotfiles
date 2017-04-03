"=== Bundle Extension
"=== :NERDTree
"==========================================
if dein#tap('nerdtree')
  " Config
  let g:NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeQuitOnOpen=0 "ファイルOPEN後に閉じる
  let g:NERDTreeWinSize=30   "Treeの横幅
  let g:NERDTreeMinimalUI=1  "ブックマークや、ヘルプのショートカットをメニューに表示する
  let g:NERDTreeShowHidden=1 "隠しファイル表示
  let g:NERDTreeShowLineNumbers=1  " 行番号
  let g:NERDTreeDirArrows=0  "綺麗に見せる
  let g:NERDTreeMouseMode=3
  let g:NERDTreeChDirMode=2
  nnoremap ,n :NERDTree .<CR>
  com! -nargs=1 -complete=dir Ncd NERDTree | cd <args> |NERDTreeCWD
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NREDTreeType") && b:NERDTreeType == "primary") | q | endif

  " Keybind
  nnoremap <silent><C-e> :NERDTreeToggle<CR>
endif

"=== :vim-submode
"==========================================
if dein#tap('vim-submode')
  let g:submode_leave_with_key = 1

  " Window resizing
  "-----------------------------------
  call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
  call submode#map(       'winsize', 'n', '', '>',      '<C-w>>')
  call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
  call submode#map(       'winsize', 'n', '', '<',      '<C-w><')
  call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
  call submode#map(       'winsize', 'n', '', '-',      '<C-w>+')
  call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
  call submode#map(       'winsize', 'n', '', '+',      '<C-w>-')
  "  Tabpage navigation
  "-----------------------------------------------
  call submode#enter_with('changetab', 'n', '', 'gt', 'gt')
  call submode#map(       'changetab', 'n', '', 't',  'gt')
  call submode#enter_with('changetab', 'n', '', 'gT', 'gT')
  call submode#map(       'changetab', 'n', '', 'T',  'gT')
  "  Macro
  "-----------------------------------------------
  call submode#enter_with('macro', 'n', '', '@@', '@@')
  call submode#map(       'macro', 'n', '', '@',  '@@')
  "  Fold navigation
  "-----------------------------------------------
  call submode#enter_with('move-to-fold', 'n', '', 'zj', 'zj')
  call submode#map(       'move-to-fold', 'n', '', 'j',  'zj')
  call submode#enter_with('move-to-fold', 'n', '', 'zk', 'zk')
  call submode#map(       'move-to-fold', 'n', '', 'k',  'zk')
endif

"=== :ctrlp
"==========================================
if dein#tap('ctrlp.vim')
  " Config
  "-----------------------------------------------
  let g:ctrlp_clear_cache_on_exit = 0   " 終了時キャッシュをクリアしない
  let g:ctrlp_mruf_max            = 1000 " MRUの最大記録数
  let g:ctrlp_open_new_file       = 1   " 新規ファイル作成時にタブで開く
  let g:ctrlp_working_path_mode = 'ra'
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jpg,*.png
  let g:ctrlp_custom_ignore = '\v[\/](node_modules|build)$'
  let g:ctrlp_user_command='ag %s -l'
  " Keybind
  "-----------------------------------------------
  nnoremap s <Nop>
  nnoremap sa :<C-u>CtrlP<Space>
  nnoremap sb :<C-u>CtrlPBuffer<CR>
  nnoremap sd :<C-u>CtrlPDir<CR>
  nnoremap sf :<C-u>CtrlP<CR>
  nnoremap sl :<C-u>CtrlPLine<CR>
  nnoremap sm :<C-u>CtrlPMRUFiles<CR>
  nnoremap sq :<C-u>CtrlPQuickfix<CR>
  nnoremap ss :<C-u>CtrlPMixed<CR>
  if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
  endif
endif

"=== :lightline
"==========================================
if dein#tap('lightline.vim')
  set laststatus=2
  let g:lightline = {
          \ 'colorscheme': 'powerline',
          \ 'mode_map': {'c': 'NORMAL'},
          \ 'active': {
          \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
          \ },
          \ 'component_function': {
          \   'modified': 'LightLineModified',
          \   'readonly': 'LightLineReadonly',
          \   'fugitive': 'LightLineFugitive',
          \   'filename': 'LightLineFilename',
          \   'fileformat': 'LightLineFileformat',
          \   'filetype': 'LightLineFiletype',
          \   'fileencoding': 'LightLineFileencoding',
          \   'mode': 'LightLineMode'
          \ }
          \ }

  function! LightLineModified()
    return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
  endfunction

  function! LightLineReadonly()
    return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
  endfunction

  function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
          \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
          \  &ft == 'unite' ? unite#get_status_string() :
          \  &ft == 'vimshell' ? vimshell#get_status_string() :
          \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
          \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
  endfunction

  function! LightLineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
      return fugitive#head()
    else
      return ''
    endif
  endfunction

  function! LightLineFileformat()
    return winwidth(0) > 70 ? &fileformat : ''
  endfunction

  function! LightLineFiletype()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
  endfunction

  function! LightLineFileencoding()
    return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
  endfunction

  function! LightLineMode()
    return winwidth(0) > 60 ? lightline#mode() : ''
  endfunction
endif

"=== :livemark.vim
"==============================================================================================
call dein#config({
  \ 'autoload': {
    \ 'commands': 'LiveMark',
  \ }
\ })

let g:livemark_browser = "open %s"
let g:livemark_browser_port = 8089
let g:livemark_vim_port = 8090
"=== :Unite
"==============================================================================================
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

"=== grep.vim
"==============================================================================================
let Grep_Skip_Dirs = '.git nodemodules '
let Grep_Default_Options = '-I'
let Grep_Skip_Files = '*~ *.bak'

"=== Unite.vim
"==============================================================================================
" 大文字小文字区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" grep検索
nnoremap <silent> ,g :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-w><CR>
"grep検索結果の際呼び出し
nnoremap <silent> ,cr :<C-u>UniteResume search-buffer<CR>
nnoremap <silent> ,cl :<C-u>UniteWithCursorWord lines<CR>

"unite use ag(The Silver Search)
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

"=== vim-easy-align
"==============================================================================================
"Start interactive EasyAlign in visual mode
xmap ga <Plug>(EasyAlign)

"Start interactive EasyAlign for a motion/text object
nmap ga <Plug>(EasyAlign)

"=== Emmet
"==============================================================================================


"=== indentline
"==============================================================================================
set list listchars=tab:\¦\
let g:indentLine_color_term = 239
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'calendar', 'thumbnail', 'tweetvim']

"=== autoclosetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml,*.erb,*.jsx"

" === GitGutter
" Config
let g:gitgutter_highlight_lines = 0
" Keybind
nnoremap <silent> <Space>gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> <Space>gh :<C-u>GitGutterLineHighlightsToggle<CR>
"=== Nerd_Commenter
"==============================================================================================
" Config
" Add Spaces after comment delimiters by default
let g:indentLine_color_term = 239
" Use compact syntax for prettified multi-line comments
let g:NERDCreateDefaultMappings = 0
" Align line-wise comment delimiters flush let instead of following code indentation
let NERDSpaceDelims = 1
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or overridxe the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/' }}
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Keymap
nmap <Space>/ <Plug>NERDCommenterToggle
vmap <Space>/ <Plug>NERDCommenterToggle

"=== syntastic
"==============================================================================================
let g:syntastic_javascript_checkers=['eslint']
"show error line
let g:syntastic_enable_signs = 1
" automatically update loaction list
let g:syntastic_always_populate_loc_list = 0
" automatically show location list
let g:syntastic_auto_loc_list = 0
" execute check when open file
let g:syntastic_check_on_open = 1
" execute check when :wq
let g:syntastic_check_on_wq = 0

"=== syntastic
"==============================================================================================
" vim-jsx用の設定
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0

"=== surrond.vim
" nmap ,( csw(
" nmap ,) csw)
" nmap ,{
nmap ," ysiw"
nmap ,( ysiw(
nmap ,) ysiw)

"=== vim-altr"
call dein#config({
  \ 'autoload': {
  \   'mappings': '<Plug>(altr-',
  \ }
  \ })

" Rails
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')

"=== vim-fugitive

"=== Shougo/neocomplete.vim

let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"=== vim-clang
let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_use_library = 1
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

if executable('clang-3.6')
    let g:clang_exec = 'clang-3.6'
elseif executable('clang-3.5')
    let g:clang_exec = 'clang-3.5'
elseif executable('clang-3.4')
    let g:clang_exec = 'clang-3.4'
else
    let g:clang_exec = 'clang'
endif

if executable('clang-format-3.6')
    let g:clang_format_exec = 'clang-format-3.6'
elseif executable('clang-format-3.5')
    let g:clang_format_exec = 'clang-format-3.5'
elseif executable('clang-format-3.4')
    let g:clang_format_exec = 'clang-format-3.4'
else
    let g:clang_exec = 'clang-format'
endif


"=== java.vim
let g:java_highlight_all=1
let g:java_highlight_debug=1
let g:java_allow_cpp_keywords=1
let g:java_space_errors=1
let g:java_highlight_functions=1

"=== vim-browsereload-mac"
let g:returnApp = "iTerm"
nmap <Space>bc :ChromeReloadStart<CR>
nmap <Space>bC :ChromeReloadStop<CR>
nmap <Space>bf :FirefoxReloadStart<CR>
nmap <Space>bF :FirefoxReloadStop<CR>
nmap <Space>bs :SafariReloadStart<CR>
nmap <Space>bS :SafariReloadStop<CR>
nmap <Space>bo :OperaReloadStart<CR>
nmap <Space>bO :OperaReloadStop<CR>
nmap <Space>ba :AllBrowserReloadStart<CR>
nmap <Space>bA :AllBrowserReloadStop<CR>


"=== rhysd/acclerated-jk
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)


"=== cohama/lexima.vim
" let g:lexima_enable_basic_rules = 0
let g:lexima_enable_newline_rules = 0

"=== kobito.app
function! s:open_kobito(...)
  if a:0 == 0
    call system('open -a Kobito '.expand('%:p'))
  else
    echom 'open -a Kobito '.join(a:000, ' ')
    call system('open -a Kobito '.join(a:000, ' '))
  endif
endfunction

command! -nargs=* Kobito call s:open_kobito(<f-args>)
command! -nargs=0 KobitoClose call system("osascript -e 'tell application \"Kobito\" to quit'")
command! -nargs=0 KobitoFocus call system("osascript -e 'tell application \"Kobito\" to activate'")


"=== scrooloose/syntastic
let g:syntastic_python_checkers = ['flake8', 'pep8']
let g:syntastic_python_checker_args='--ignore=E501'
let g:syntastic_python_pep8_args='--ignore=E501'
let g:syntastic_python_flake8_args = '--ignore="E501"'


function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 --ignore=E501 -')
endfunction

" Shift + F で自動修正
autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>

"emmet-vim
let g:user_emmet_leader_key='<C-y>'

"===vim-scripts/javacomplete
"To enable smart (trying to guess import option) inserting class imports with F4, add:
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

" vaComplete-Imports-Add)

"imapble usual (will ask for import option) inserting class imports with F5, add:

nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
"To add all missing imports with F6:
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

"To remove all missing imports with F7:
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd FileType java :setlocal omnifunc=javacomplete#Complete
autocmd FileType java :setlocal completefunc=javacomplete#CompleteParamsInfo

