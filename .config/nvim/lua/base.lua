vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.clipboard = 'unnamed'

vim.o.relativenumber = true

vim.opt.title       = true
vim.opt.tabstop     = 2
vim.opt.shiftwidth  = 2
vim.opt.softtabstop = 2
vim.opt.hlsearch    = true
vim.autoident       = true
vim.opt.backup      = false
vim.opt.showcmd     = true
vim.opt.cmdheight   = 1
vim.opt.laststatus  = 2
vim.opt.expandtab   = true
vim.opt.scrolloff   = 10
vim.opt.shell       = 'zsh'
vim.opt.backupskip  = '/tmp/*'
vim.opt.inccommand  = 'split'
vim.opt.ignorecase  = true
vim.opt.smarttab    = true
vim.opt.breakindent = true
vim.opt.shiftwidth  = 2
vim.opt.tabstop     = 2
vim.opt.ai          = true -- Auto indent
vim.opt.si          = true -- Smart indent
vim.opt.wrap        = false -- No wrap lines
vim.opt.backspace   = 'start,eol,indent'
vim.opt.path:append { '**' } -- Finding files -- Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Colorscheme
vim.g.material_terminal_italics = 0
vim.g.material_theme_style = 'default-community'
vim.cmd('colorscheme material')

-- Turn off swap files
vim.cmd('set noswapfile')
