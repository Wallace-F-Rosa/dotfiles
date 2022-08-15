local status, mason = pcall(require, 'mason')

if (not status) then
  print('mason is not installed')
  return
end

local statusConfig, mason_lsp_config = pcall(require, 'mason-lspconfig')

if (not statusConfig) then
  print('mason-lspconfig is not installed')
  return
end

mason.setup {}
mason_lsp_config.setup {
  ensure_installed = {
    'tailwindcss',
    'tsserver',
    'rust_analyzer'
  }
}
