"=== Bundle only call
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/locona/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/locona/.vim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" it enable to input continuously on a keyboard
call dein#add('kana/vim-submode')

" Search File
call dein#add('ctrlpvim/ctrlp.vim')

"文字列検索
call dein#add('rking/ag.vim')

" ディレクトリツリー
call dein#add('scrooloose/nerdtree')

" light and configurable statusline/tabline 
call dein#add('itchyny/lightline.vim')

" real time markdown preview plugin for vim
call dein#add('miyakogi/livemark.vim')


" navigate seamlessly between vim and tmux
call dein#add('christoomey/vim-tmux-navigator')
" slim syntax highlihging
call dein#add('slim-template/vim-slim')

" indent guids displaying indnet
call dein#add('Yggdroot/indentLine')

" show modifications
call dein#add('airblade/vim-gitgutter')
"eslint
call dein#add('scrooloose/syntastic')
call dein#add('mtscout6/syntastic-local-eslint.vim')

" autoclosetag
call dein#add('alvan/vim-closetag')

" es6 syntax
call dein#add('jelera/vim-javascript-syntax')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')

"=== colorscheme
call dein#add('tomasr/molokai')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
