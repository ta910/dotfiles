let g:submode_leave_with_key = 1

" Window resizing
"-----------------------------------
call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
call submode#map(       'winsize', 'n', '', '>',      '<C-w>>')
call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
call submode#map(       'winsize', 'n', '', '<',      '<C-w><')
call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>-')
call submode#map(       'winsize', 'n', '', '-',      '<C-w>+')
call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>+')
call submode#map(       'winsize', 'n', '', '+',      '<C-w>-')
"  Tabpage navigation
"-----------------------------------------------
call submode#enter_with('changetab', 'n', '', 'gt', 'gt')
call submode#map(       'changetab', 'n', '', 't',  'gt')
call submode#enter_with('changetab', 'n', '', 'gT', 'gT')
call submode#map(       'changetab', 'n', '', 'T',  'gT')
"  Macro
"-----------------------------------------------
call submode#enter_with('macro', 'n', '', '@@', '@@')
call submode#map(       'macro', 'n', '', '@',  '@@')
"  Fold navigation
"-----------------------------------------------
call submode#enter_with('move-to-fold', 'n', '', 'zj', 'zj')
call submode#map(       'move-to-fold', 'n', '', 'j',  'zj')
call submode#enter_with('move-to-fold', 'n', '', 'zk', 'zk')
call submode#map(       'move-to-fold', 'n', '', 'k',  'zk')
