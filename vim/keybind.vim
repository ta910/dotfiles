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

"=== KEYBIND VIM-EDITOR (NOT PLUGIN KEYBIND)

" PrefixKey
nnoremap <Space>r :source ~/.vimrc<Enter>

"====== NORMAL
" 同じワードを検索
nnoremap <Space> / *

"====== NORMAL + VISUAL

noremap <Space>h ^
noremap <Space>l $
noremap <Space>q :split<Enter>
noremap <Space>w :vsplit<Enter>
noremap <Space>sh <C-w>h           "画面移動: 左
noremap <Space>sl <C-w>l           "画面移動: 右
noremap <Space>sk <C-w>k           "画面移動: 上
noremap <Space>sj <C-w>j           "画面移動: 下
noremap <Space>' <C-w><"横幅変更"
noremap <Space>; <C-w>>"横幅変更"
noremap <Space>, <C-w>+"縦幅変更"
noremap <Space>. <C-w>-"縦幅変更"
noremap <Space>= <C-w>="サイズ統一"
noremap <ESC><ESC> :noh<CR>
noremap j gj
noremap k gk
noremap gj j
noremap gk k
"---------------change insert by ja----------------------
noremap あ a
noremap い i
noremap う u
noremap お o
noremap っd dd
noremap っy yy

"====== INSERT
inoremap <silent>jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-u> <BackSpace>
inoremap <C-o> <C-o>o
inoremap <C-a> <C-o>^
inoremap <C-s> <C-o>$
"----------- auto brackets ----------
inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap '<Enter> ''<Left><CR><ESC><S-o>
inoremap "<Enter> ""<Left><CR><ESC><S-o>
"---------------change normal by ja----------------------
" 日本語入力で っj と入力しても Enterを確定させれば insertモードを抜ける
inoremap <silent>っj <ESC>


"=== MacVim
"==========================
"Tab移動
nnoremap <C-t> gt<Enter>
