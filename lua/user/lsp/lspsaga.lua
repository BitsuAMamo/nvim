local status, saga = pcall(require, "lspsaga")
if not status then
  print("lspsaga Failed to Load")
  return
end


saga.init_lsp_saga({
  move_in_saga = { prev = "<C-K", next = "<C-j>"},
  finder_action_keys = {
    open = "<CR",
  },
  definition_action_keys = {
    edit = "<CR>",
  },

})
