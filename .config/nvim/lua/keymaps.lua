local keymap = vim.keymap

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split windows
keymap.set('n', '<Space>ss', ':sp<Return><C-w>w', { silent = true })
keymap.set('n', '<Space>sv', ':vsp<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<Space>sh', '<C-w>h')
keymap.set('', '<Space>sk', '<C-w>k')
keymap.set('', '<Space>sj', '<C-w>j')
keymap.set('', '<Space>sl', '<C-w>l')

