vim.api.nvim_create_autocmd(
  {"TextYankPost"},
  {
    callback = function ()
      vim.highlight.on_yank({hlgroup = 'visual', timeout = 200})
    end
  }
)
