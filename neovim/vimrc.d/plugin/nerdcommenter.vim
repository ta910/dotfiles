" Config
" Add Spaces after comment delimiters by default
let g:indentLine_color_term = 239
" Use compact syntax for prettified multi-line comments
let g:NERDCreateDefaultMappings = 0
" Align line-wise comment delimiters flush let instead of following code indentation
let NERDSpaceDelims = 1
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or overridxe the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**', 'right': '*/' }}
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Keymap
nmap <Space>/ <Plug>NERDCommenterToggle
vmap <Space>/ <Plug>NERDCommenterToggle
