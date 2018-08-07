let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1

let g:go_autodetect_gopath = 1
let g:go_gocode_unimported_packages = 1
let g:go_gocode_autobuild = 1
" let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_auto_type_info = 0

autocmd FileType go nmap <Space>gr <Plug>(go-run)
autocmd FileType go nmap <Space>gb <Plug>(go-build)
autocmd FileType go nmap <Space>gt <Plug>(go-test)
autocmd FileType go nmap <Space>gc <Plug>(go-coverage)
autocmd FileType go nmap <Space>gd <Plug>(go-doc)
autocmd FileType go nmap <Space>gi <Plug>(go-imports)
autocmd FileType go nmap <Space>gm <Plug>(go-implements)
