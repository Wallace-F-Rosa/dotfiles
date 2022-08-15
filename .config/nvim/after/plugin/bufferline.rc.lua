local status, bufferline = pcall(require, 'bufferline')

if (not status) then
  print('bufferline is not installed')
  return
end

bufferline.setup {
  options = {
    mode = 'tabs',
    always_show_buferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      fg = '#073642',
      bg = '#002b36'
    },
    separator_selected = {
      fg = '#073642',
      bg = '#002b36'
    },
    background = {
      fg = '#657b83',
      bg = '#002b36'
    },
    buffer_selected = {
      fg = '#fdf6e3',
      bold = true
    },
    fill = {
      bg = '#073642',
    }
  }
}

local opts = {
  silent = true,
  noremap = true
}

vim.keymap.set('n', '[b', '<cmd>BufferLineCycleNext<cr>', opts)
vim.keymap.set('n', ']b', '<cmd>BufferLineCyclePrev<cr>', opts)
