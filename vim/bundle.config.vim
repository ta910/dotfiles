"----------------------------------------------------------------------------------------------
"                                        _
"                                 _   __(_)___ ___  __________
"                                | | / / / __ `__ \/ ___/ ___/
"                                | |/ / / / / / / / /  / /__
"                                |___/_/_/ /_/ /_/_/   \___/
"
"                                 thub.com/locona/dotfiles
"
"----------------------------------------------------------------------------------------------

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

