let g:fzf_layout = { 'down': '~40%' }
nnoremap <silent> <C-]> :call fzf#vim#tags(expand('<cword>'))<CR>
let g:fzf_buffers_jump = 1

nnoremap sb :<C-u>Buffers
nnoremap <C-p> :<C-u>Files<CR>
nnoremap sr :<C-u>Tags<CR>
