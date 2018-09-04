let g:fzf_layout = { 'down': '~40%' }
" nnoremap <silent> <C-]> :call fzf#vim#tags(expand('<cword>'))<CR>
let g:fzf_buffers_jump = 1

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

nnoremap sb :<C-u>Buffers
nnoremap sr :<C-u>Tags<CR>

" command! FZFFileList call fzf#run({
            " \ 'source': 'find . -type d -name .git -prune -o ! -name .DS_Store',
            " \ 'sink': 'e'})

nnoremap <C-p> :Files<CR>
" function! s:find_git_root()
  " return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
" endfunction
"
" command! ProjectFiles execute 'Files' s:find_git_root()


" command! FZFMru call fzf#run({
            " \  'source':  v:oldfiles,
            " \  'sink':    'tabe',
            " \  'options': '-m -x +s',
            " \  'down':    '40%'})

nnoremap sf :FZFMru<CR>
command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})
nnoremap <Leader>r :FZFMru<CR>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
