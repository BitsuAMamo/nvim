-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- lspkind
local lspkind = require('lspkind')
lspkind.init()

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'

cmp.setup{
    mapping = {
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-e>"] = cmp.mapping.close(4),
        ["<CR>"] = cmp.mapping.confirm{
            behaviour = cmp.ConfirmBehavior.Insert,
            select = true,
        },

        ["<C-space>"] = cmp.mapping.complete(),
    },

    sources = {
        {name = "nvim_lua"},
        {name = "nvim_lsp"},
        {name = "path"},
        {name = "luasnip"},
        {name = "buffer", keyword_length = 4},
    },

    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    experimental = {
        ghost_text = true,
        native_menu = false,
    },

    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[lua]",
                path = "[path]",
                luasnip = "[snip]",
            },
        },
    },

}

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done())
