"=== Bundle Extension
"=== :NERDTree
"==========================================
if dein#tap('nerdtree')
  " Config
  let g:NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeQuitOnOpen=1 "ファイルOPEN後に閉じる
  let g:NERDTreeWinSize=30   "Treeの横幅
  let g:NERDTreeMinimalUI=1  "ブックマークや、ヘルプのショートカットをメニューに表示する
  let g:NERDTreeShowHidden=1 "隠しファイル表示
  let g:NERDTreeShowLineNumbers=1  " 行番号
  let g:NERDTreeDirArrows=0  "綺麗に見せる
  let g:NERDTreeMouseMode=3  "ファ
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
  nnoremap st :<C-u>CtrlPTag<CR>
  if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag %s -i --nocolor --nogroup -g ""'
  endif
endif

"=== :ctrlp
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
if dein#tap('livemark.vim')
  call dein#config({
    \ 'autoload': {
      \ 'commands': 'LiveMark',
    \ }
  \ })

  let g:livemark_browser = "open %s"
  let g:livemark_browser_port = 8089
  let g:livemark_vim_port = 8090

  " let g:livemark_no_default_js = 1
  " let g:livemark_no_default_css = 1
  " let g:livemark_js_files = [expand('~/path/to/your/js_file.js')]
  " let g:livemark_css_files = [expand('~/path/to/your/css_file.css')]

endif
"=== indentline
"==============================================================================================
set list listchars=tab:\¦\
let g:indentLine_color_term = 239
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'calendar', 'thumbnail', 'tweetvim']

"=== autoclosetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.xml"

"=== GitGutter
" Config
let g:gitgutter_highlight_lines = 0
" Keybind
nnoremap <silent> ,gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> ,gh :<C-u>GitGutterLineHighlightsToggle<CR>

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
