local status, lspconfig = pcall(require, "lspconfig")
if not status then
  print("lspconfig failed to load")
  return
end


local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status then
  print("cmp_nvim_lsp failed to load")
  return
end

local keymap = vim.keymap

-- enable keybinds for available lsp servers

local on_attach = function(client, bufnr)
  local opts = {noremap = true, silent = true, buffer = bufnr}
  

  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)
  keymap.set("n", "gD", "<cmd>lua vim.buf.declaration()<CR>", opts)
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "gi", "<cmd>lua vim.buf.implementation()<CR>", opts)
  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap.set("n", "[d", "<cmd>Lspsaga diagnostics_jump_prev<CR>", opts)
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostics_jump_next<CR>", opts)
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  keymap.set("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", opts)


end

local capabilities = require("cmp_nvim_lsp").default_capabilities()


lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["tsserver"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        }
      },
    },
  },
})

