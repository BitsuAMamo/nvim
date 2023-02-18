local lsp = require('lsp-zero')
local virtualtypes = require('virtualtypes')
local cmp = require('cmp')
local luasnip = require('luasnip')

local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<Tab>"] = cmp.mapping(

        function (fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }
    ),

    ["<S-Tab>"] = cmp.mapping(function(fallback)

        if cmp.visible() then
            cmp.select_prev_item()
        elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
        else
            fallback()
        end
    end, { "i", "s" }
    ),

})


lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})


lsp.preset('recommended')
lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

end)

lsp.configure('rust_analyzer', {
    inlayHints = {
        chainingHints = true,
        parameterHints = true,
        typeHints = true,
    },
    on_attach = virtualtypes.on_attach,
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = true,
})
