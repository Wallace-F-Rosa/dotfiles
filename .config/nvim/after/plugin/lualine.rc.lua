local status, lualine = pcall(require, 'lualine')

if (not status) then
  print("lualine is not installed")
  return
end
local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}

lualine.setup {
  sections   = {
    lualine_b = {
      'branch'
    },
    lualine_x = {
      {
        'diagnostics',
        sources = {
          'nvim_diagnostic'
        },
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' ',
          hint = ' '
        },
        diagnostic_colors = {
          color_error = { fg = colors.red },
          color_warn = { fg = colors.yellow },
          color_info = { fg = colors.cyan },
          color_hint = { fg = colors.blue },
        }
      }
    },
  },
  extensions = { 'fugitive' }
}

return lualine
