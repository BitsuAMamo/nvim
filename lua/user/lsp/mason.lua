local status, mason, mason_lspconfig, mason_null_ls

status, mason = pcall(require, "mason")
if not status then
  print("Mason Failed to Load")
  return
end

status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
  print("mason-lspconfig Failed to Load")
  return
end

status, mason_null_ls = pcall(require, "mason-null-ls")
if not status then
  print("mason_null_ls Failed to Load")
  return
end



mason.setup()

mason_lspconfig.setup({
 ensure_installed = {
   "tsserver",
   "html",
   "cssls",
   "sumneko_lua",
    "rust_analyzer",
 }
})

mason_null_ls.setup({
 ensure_installed = {
   "stylua",
   "prettier",
    "rustfmt",
 }
})
