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
" call dein#add('violetyk/neocomplete-php.vim')

" it enable to input continuously on a keyboard
call dein#add('kana/vim-submode')

" Search File
call dein#add('ctrlpvim/ctrlp.vim')

"文字列検索
call dein#add('rking/ag.vim')

call dein#add('Shougo/vimproc.vim', {
      \ 'build': {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin'  : 'make -f make_cygwin.mak',
      \     'mac'     : 'make -f make_mac.mak',
      \     'linux'   : 'make',
      \     'unix'    : 'gmake',
      \    },
      \ })

" unite and create user interfaces
" call dein#add('Shougo/unite.vim')

" source for ghq list
" call dein#add('sorah/unite-ghq', { 'depends': ['Shougo/unite.vim'] })
" ディレクトリツリ-
call dein#add('scrooloose/nerdtree')

call dein#add('scrooloose/nerdcommenter')

" light and configurable statusline/tabline
call dein#add('itchyny/lightline.vim')

" working with Ruby on Rails applicaiton
" call dein#add('tpope/vim-rails')

" vim motion on speed
" call dein#add('easymotion/vim-easymotion')

" navigate seamlessly between vim and tmux
call dein#add('christoomey/vim-tmux-navigator')

" vim search status
call dein#add('osyo-manga/vim-anzu')

" deleteing, changing, and adding surroundings
call dein#add('tpope/vim-surround')

" slim syntax highlihging
" call dein#add('slim-template/vim-slim')

" indent guids displaying indnet
call dein#add('Yggdroot/indentLine')

" simple vim alignment plugin
call dein#add('junegunn/vim-plug')
call dein#add('junegunn/vim-easy-align')

"
call dein#add('thinca/vim-quickrun')
"
" show modifications
" call dein#add('airblade/vim-gitgutter')
" call dein#add('gbarta/evil-noautochdir')

" switch to the missing file without interaction
call dein#add ('kana/vim-altr')

"eslint
call dein#add('mtscout6/syntastic-local-eslint.vim')

" autoclosetag
call dein#add('alvan/vim-closetag')
"
" f/t motions to highlight all possible choices
" call dein#add('Lokaltog/vim-easymotion')

" auto close parenthess and repeat by bot
"call dein#add('')
" es6 syntax
call dein#add('jelera/vim-javascript-syntax')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')

" create your own text objects
call dein#add('kana/vim-textobj-user')
" text objects for indented blocks of lines
call dein#add('kana/vim-textobj-indent', { 'depend': ['kana/vim-textobj-user']})
"=== colorscheme
call dein#add('tomasr/molokai')

"=== coffeescript syntax
" call dein#add('kchmck/vim-coffee-script')
"=== c++
call dein#add('justmao945/vim-clang')
" call dein#add('Shougo/neoinclude.vim')
call dein#add('vim-jp/vim-cpp')

"=== java"
call dein#add('vim-scripts/java.vim')
call dein#add('vim-scripts/javacomplete')
" call dein#add('artur-shaik/vim-javacomplete2')
"===
" call dein#add('mattn/benchvimrc-vim')

"=== python
call dein#add('davidhalter/jedi-vim')
call dein#add('lambdalisue/vim-django-support', {
    \ "autoload": {
    \   "filetypes": ["python", "python3", "djangohtml"]
    \}
    \})
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('scrooloose/syntastic')


"=== front
" emmet html
call dein#add('mattn/emmet-vim')
" reflesh browser
" call dein#add('tell-k/vim-browsereload-mac')
" css3 syntax
call dein#add('hail2u/vim-css3-syntax')

"=== j k 高速化
" call dein#add('rhysd/accelerated-jk')

"=== auto close parentheses and repeat by dot dot...
call dein#add('cohama/lexima.vim')

"=== Pending Plugin"
"-----------------------------------------------
call dein#add('tpope/vim-fugitive')

"=== Mono"
" call dein#add('OmniSharp/omnisharp-vim', {
" \   'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] },
" \   'build': {
" \     'windows' : 'msbuild server/OmniSharp.sln',
" \     'mac': 'xbuild server/OmniSharp.sln',
" \     'unix': 'xbuild server/OmniSharp.sln',
" \   },
" \ })
"
" call dein#add('OrangeT/vim-csharp', {'autoload': {'filetypes': ['cs', 'csi', 'csx']}})
" call dein#add('tpope/vim-dispatch')

call dein#add('fatih/vim-go')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
