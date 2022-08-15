local status, git = pcall(require, 'git')

if (not status) then
  print('git.nvim not installed')
  return
end
