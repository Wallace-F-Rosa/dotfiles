local status, lspsaga = pcall(require, 'lspsaga')

if (not status) then
  print('lspsaga is not installed')
  return
end

lspsaga.init_lsp_saga {
  server_filetype_map = {}
}

local opts = { noremap = true, silent = true }

-- Basic config
vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set('i', '<C-k>', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set("n", "gp", "<cmd>Lspsaga preview_definition<CR>", opts)

-- Rename vars. HUGE
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<CR>", opts)

-- Show current diagnostics
vim.keymap.set("n", "<Space>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
vim.keymap.set("n", "<Space>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)

-- or jump to error
vim.keymap.set("n", "[E", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
vim.keymap.set("n", "]E", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)
-- or use command
vim.keymap.set("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-d>", function()
  action.smart_scroll_with_saga(1)
end, opts)
-- scroll up hover doc
vim.keymap.set("n", "<C-u>", function()
  action.smart_scroll_with_saga(-1)
end, opts)
