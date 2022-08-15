local status, Comment = pcall(require, 'Comment')

if (not status) then
  print('Comment is not installed')
  return
end

Comment.setup {}
