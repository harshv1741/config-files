local ks = vim.keymap

-- Do not yank with x 
ks.set('n','x','"_x')

-- Increment/decrement
ks.set('n', '+', '<C-a>')
ks.set('n', '-', '<C-x>')

-- Delete a word backwards
ks.set('n', 'dw', 'vb"_d')

-- Select all
ks.set('n', '<C-a>', 'gg<S-v>G')

-- Tab editing
ks.set('n', 'te', ':tabedit', {silent = true})
ks.set('n','tn',':tabn', {silent = true})
ks.set('n', 'ts', ':tabs', {silent = true})

-- Split window
ks.set('n', 'ss',':split<Enter><C-w>w')
ks.set('n', 'sv', ':vsplit<Enter><C-w>w')

-- Move window
ks.set('n', '<Space>', '<C-w>w')
ks.set('', 'sh', '<C-w>h')
ks.set('', 'sk', '<C-w>k')
ks.set('', 'sj', '<C-w>j')
ks.set('', 'sl', '<C-w>l')

-- Resize window
ks.set('n', '<C-w><left>', '<C-w><')
ks.set('n', '<C-w><right>', '<C-w>>')
ks.set('n', '<C-w><up>', '<C-w>+')
ks.set('n', '<C-w><down>', '<C-w>-')

-- Copy Line Down
-- ks.set('n', '<S-M><down>' , '<S-v>ddp')
