"=== Color
syntax enable
syntax on
set t_Co=256
let g:rehash256 = 1
" set background=dark

" ==== molokai
if dein#tap('molokai')
  colorscheme molokai
  " let g:molokai_original = 1
endif
