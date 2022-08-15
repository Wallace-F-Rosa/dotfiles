local status, prettier = pcall(require, 'prettier')

if (not status) then
  print('prettier.nvim is not installed')
  return
end

prettier.setup {
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  }
}
