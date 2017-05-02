"=== KEYBIND VIM-EDITOR (NOT PLUGIN KEYBIND)

" PrefixKey
nnoremap <Space>r :source ~/.config/nvim/init.vim<Enter>

"====== NORMAL
nnoremap q: :q
nnoremap <Space>: :q<Enter> "====== NORMAL + VISUAL
map <C-c> <ESC>
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
noremap st :tabnew<CR>
noremap sp gt
noremap sn gT

"---------------change insert by ja----------------------
imap <C-j> <CR>
inoremap <silent>jj <ESC>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-b> <Left>
inoremap <C-l> <Right>
inoremap <C-f> <Right>
inoremap <C-u> <BackSpace>
inoremap <C-o> <C-o>o
inoremap <C-a> <C-o>^
inoremap <C-e> <C-o>$
inoremap <C-y> <nop>
"----------- auto brackets ----------
inoremap <ESC> <ESC>:set iminsert=0<CR>

"=== MacVim
"==========================
"Tab移動
nnoremap <C-t> gt<Enter>
"====== INSERT
