local status, telescope = pcall(require, 'telescope')

if (not status) then
  print('telescope is not installed')
  return
end

local actions = require('telescope.actions')

function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ['q'] = actions.close
      }
    }
  },
  extensions = {
    file_browser = {
      theme = 'dropdown',
      -- disables netrw and uses telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- custom insert mode mappings
        ['i'] = {
          ['<C-w>'] = function()
            vim.cmd('normal vbd')
          end,
        },
        ['n'] = {
          ['N'] = fb_actions.create,
          ['h'] = fb_actions.goto_parent_dir,
          ['/'] = function()
            vim.cmd('startinsert')
          end
        }
      }
    }
  }
}

telescope.load_extension('file_browser')

local opts = {
  noremap = true,
  silent = true,
}

vim.keymap.set('n', '<Space>ff',
  "<cmd>lua require('telescope.builtin').find_files({ no_ignore = false, hidden = true })<cr>", opts)
vim.keymap.set('n', '<Space>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
vim.keymap.set('n', '<Space>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
vim.keymap.set('n', '<Space>fn', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
vim.keymap.set('n', '<Space>sb', "<cmd>lua require('telescope').extensions.file_browser.file_browser()<cr>", opts)
