-- Config from lsp_installer
local lsp_installer = require("nvim-lsp-installer")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end
    if server.name == "sorbet" then
        opts.capabilities = capabilities
        opts.root_dir = function() return vim.loop.cwd() end
    end

    if server.name == "cssls" then
        opts.capabilities = capabilities
        opts.root_dir = function() return vim.loop.cwd() end
    end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd[[ do User LspAttachBuffers ]]
end)

--[[vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = true,
    }
)
]]
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
        signs = true,
    }
)
