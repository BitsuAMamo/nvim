-- require("nvim-autopairs").setup{}

-- require("project_nvim").setup{}

require("nvim-autopairs").setup{}
--[[ require("nvim-autopairs.completion.cmp").setup({
    map_cr = true,
    map_complete = true,
    auto_select = true,
    insert = true,
    map_char = {
        all = '(',
        tex = '{',
    },
}) --]]


require"nvim-web-devicons".setup{
    default = true,
}

require("spellsitter").setup()

require("Comment").setup()

require'lualine'.get_config()

require('lualine').setup()




-- Emmet FileType
vim.cmd[[
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
]]


vim.cmd[[
    nnoremap <leader>ss :term live-server .<CR>
]]
--vim.api.nvim_set_keymap('n', '<leader>ss', ':term live-server . <CR>', {noremap=true, silent = true})

-- Indentaton
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    char = "|",
    space_char_blankline = " ",
    buftype_exclude = {"terminal"},
}
