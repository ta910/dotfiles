"=== KEYBIND VIM-EDITOR (NOT PLUGIN KEYBIND)

" PrefixKey
nnoremap <Space>r :source ~/.vimrc<Enter>

"====== NORMAL
nnoremap q: :q
nnoremap <Space>: :q<Enter>
"====== NORMAL + VISUAL

noremap <Space>h ^
noremap <Space>l $
noremap <Space>w :split<Enter>
noremap <Space>q :vsplit<Enter>
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
inoremap <silent>jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-u> <BackSpace>
inoremap <C-o> <C-o>o
inoremap <C-a> <C-o>^
inoremap <C-v> <C-o>$
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
inoremap <ESC> <ESC>:set iminsert=0<CR>
"---------------change normal by ja----------------------
" 日本語入力で っj と入力しても Enterを確定させれば insertモードを抜ける
inoremap <silent>っj <ESC>


"=== MacVim
"==========================
"Tab移動
nnoremap <C-t> gt<Enter>
"====== INSERT
