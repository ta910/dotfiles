"=== vim-easy-align
"==============================================================================================
if dein#tap('vim-easy-align')
  "Start interactive EasyAlign in visual mode
  xmap ga <Plug>(EasyAlign)

  "Start interactive EasyAlign for a motion/text object
  nmap ga <Plug>(EasyAlign)
endif


"=== vim-altr"
call dein#config({
  \ 'autoload': {
  \   'mappings': '<Plug>(altr-',
  \ }
  \ })

" Rails
if dein#tap('altr')
  call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%srb')
endif

