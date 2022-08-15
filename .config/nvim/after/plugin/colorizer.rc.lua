local status, colorizer = pcall(require, 'colorizer')

if (not status) then
  print('colorizer not installed')
  return
end

-- colorizer.setup {
--   '*'
-- }
