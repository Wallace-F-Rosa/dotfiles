local status, ts = pcall(require, 'nvim-treesitter.configs')

if (not status) then
  print('treesitter is not installed')
  return
end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'vue',
    'css',
    'html',
    'javascript',
    'markdown',
    'rust',
    'python',
    'bash',
  },
  autotag = {
    enable = true,
  }
}
