set encoding=utf-8
scriptencoding utf-8
" disable default plugins
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_LogiPat           = 1
let g:loaded_logipat           = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_man               = 1
let g:loaded_python_provider   = 1
let g:python3_host_prog        = "/Users/locona/.anyenv/envs/pyenv/shims/python3"

function! s:vimrc_environment()
  let l:env = {}
  let l:vim_path = $HOME . '/.config/nvim'
  let l:env.path = {
    \ 'dein':   l:vim_path . '/dein',
    \ 'dein_toml': l:vim_path . '/dein.toml',
    \ 'dein_lazy_toml': l:vim_path . '/dein_lazy.toml',
    \ 'vimrcd': l:vim_path . '/vimrc.d',
    \}
  return l:env
endfunction

let g:env = s:vimrc_environment()
function! s:load_file(file)
  let l:file = g:env.path.vimrcd . '/' . a:file . '.vim'
  if filereadable(l:file)
    execute 'source ' . l:file
  else
    echomsg 'file not readable:' l:file
  endif
endfunction

augroup vimrc
  autocmd!
augroup END

"=== Plugins
"===================================================================
"dein Scripts-----------------------------
filetype plugin indent on
if &compatible
  set nocompatible               " Be iMproved
endif
" Required:
set runtimepath^=/Users/locona/.config/nvim/dein/repos/github.com/Shougo/dein.vim

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



"=== Load
"=====================================================================
call s:load_file('basic')
call s:load_file('keybind')
call s:load_file('syntax')
call s:load_file('color')
call s:load_file('plugin/autopep8')

if dein#tap('ctrlp.vim')
  call s:load_file('plugin/ctrlp')
endif
if dein#tap('emmet-vim')
  call s:load_file('plugin/emmet-vim')
endif
if dein#tap('indentLine')
  call s:load_file('plugin/indentLine')
endif
if dein#tap('java')
  call s:load_file('plugin/java')
endif
if dein#tap('lexima')
  call s:load_file('plugin/lexima')
endif
if dein#tap('lightline')
  call s:load_file('plugin/lightline')
endif
if dein#tap('neocomplete')
  call s:load_file('plugin/neocomplete')
endif
if dein#tap('nerdcommenter')
  call s:load_file('plugin/nerdcommenter')
endif
if dein#tap('nerdtree')
  call s:load_file('plugin/nerdtree')
endif
if dein#tap('regex.py')
  call s:load_file('plugin/regex.py')
endif
if dein#tap('result')
  call s:load_file('plugin/result')
endif
if dein#tap('syntastic')
  call s:load_file('plugin/syntastic')
endif
if dein#tap('unite')
  call s:load_file('plugin/unite')
endif
if dein#tap('vim-clang')
  call s:load_file('plugin/vim-clang')
endif
if dein#tap('vim-closetag')
  call s:load_file('plugin/vim-closetag')
endif
if dein#tap('vim-gitgutter')
  call s:load_file('plugin/vim-gitgutter')
endif
if dein#tap('vim-flake8')
  call s:load_file('plugin/vim-flake8')
endif
if dein#tap('vim-submode')
  call s:load_file('plugin/vim-submode')
endif
if dein#tap('vim-surround')
  call s:load_file('plugin/vim-surround')
endif
