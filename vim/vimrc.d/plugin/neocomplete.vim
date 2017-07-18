" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" _(アンダースコア)区切りの補完を有効化
let g:neocomplete#enable_underbar_completion = 1
let g:neocomplete#enable_camel_case_completion  =  1
" シンタックスをキャッシュするときの最小文字長
let g:neocomplete#min_keyword_length = 6
" 補完を表示する最小文字数
let g:neocomplete#auto_completion_start_length = 5
" preview window を閉じない
let g:neocomplete#enable_auto_close_preview = 0
" AutoCmd InsertLeave * silent! pclose!
let g:neocomplete#disable_auto_complete = 0
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_insert_char_pre = 1

" let g:neocomplete#sources#dictionary#dictionaries = {
  " \ 'default' : '',
  " \ 'scala' : $HOME . '/.vim/dict/scala.dict',
  " \ }
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" let g:neocomplete#sources#omni#input_patterns.go = '\h\w\.\w*'
" let g:neocomplete#force_omni_input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" omni
" input patterns
let g:neocomplete#sources#omni#input_patterns = get(g:, 'neocomplete#sources#omni#input_patterns', {})
let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\%(\w\|\/\)*'

let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns = get(g:, 'neocomplete#force_omni_input_patterns', {})

" keyword patterns
let g:neocomplete#keyword_patterns = get(g:, 'neocomplete#keyword_patterns', {})
let g:neocomplete#keyword_patterns._ = '\h\w*'

autocmd vimrc FileType css
  \ setlocal omnifunc=csscomplete#CompleteCSS
autocmd vimrc FileType html,markdown
  \ setlocal omnifunc=htmlcomplete#CompleteTags
autocmd vimrc FileType javascript
  \ setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd vimrc FileType python
  \ setlocal omnifunc=pythoncomplete#Complete
autocmd vimrc FileType go
  \ setlocal omnifunc=gocomplete#Complete
