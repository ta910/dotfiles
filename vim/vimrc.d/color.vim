"=== Color
syntax enable
set t_Co=256
set background=dark

" ==== molokai
if dein#tap('molokai')
  colorscheme molokai
  let g:rehash256 = 1
  let g:molokai_original = 1
endif
" colorscheme koehler

" if dein#tap('candle.vim')
  " colorscheme candle
" endif
"
