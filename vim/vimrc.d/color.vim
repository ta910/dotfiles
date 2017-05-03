"=== Color
syntax enable
set t_Co=256
set background=dark
let g:rehash256 = 1

" ==== molokai
if dein#tap('molokai')
  colorscheme molokai
  " let g:molokai_original = 1
endif
