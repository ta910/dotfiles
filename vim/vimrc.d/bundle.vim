"=== Bundle only call
"dein Scripts-----------------------------
filetype plugin indent on
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath^=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

let g:vim_path = $HOME . '/.vim'
let g:env = {}
let g:env.path = {
  \ 'dein':           g:vim_path . '/dein',
  \ 'dein_repo':      g:vim_path . '/dein/repos/github.com/Shougo/dein.vim',
  \ 'dein_toml':      g:vim_path . '/dein.toml',
  \ 'dein_lazy_toml': g:vim_path . '/dein_lazy.toml',
\ }

if dein#load_state(g:env.path.dein)
  call dein#begin(g:env.path.dein, [expand('<sfile>'), g:env.path.dein_toml, g:env.path.dein_lazy_toml])

  call dein#load_toml(g:env.path.dein_toml,      { 'lazy': 0 })
  call dein#load_toml(g:env.path.dein_lazy_toml, { 'lazy': 1 })

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

