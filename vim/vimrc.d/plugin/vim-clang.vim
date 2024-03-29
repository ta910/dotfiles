let g:clang_auto = 0
let g:clang_complete_auto = 0
let g:clang_auto_select = 0 let g:clang_use_library = 1
let g:clang_c_options = '-std=c11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone'

if executable('clang-3.6')
  let g:clang_exec = 'clang-3.6'
elseif executable('clang-3.5')
  let g:clang_exec = 'clang-3.5'
elseif executable('clang-3.4')
  let g:clang_exec = 'clang-3.4'
else
  let g:clang_exec = 'clang'
endif

if executable('clang-format-3.6')
  let g:clang_format_exec = 'clang-format-3.6'
elseif executable('clang-format-3.5')
  let g:clang_format_exec = 'clang-format-3.5'
elseif executable('clang-format-3.4')
  let g:clang_format_exec = 'clang-format-3.4'
else
  let g:clang_exec = 'clang-format'
endif
