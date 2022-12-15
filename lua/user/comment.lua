local status, comment = pcall(require, "Comment")
if not status then
  print("Comment Failed to Load")
  return
end

comment.setup()
