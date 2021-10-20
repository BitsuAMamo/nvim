require('nvim-ts-autotag').setup()
require'nvim-treesitter.configs'.setup{

    -- Highlight
    highlight = {
        enable=true,
    },

    -- Rainbow Brackets
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    -- Indentation
    --[[
    require'nvim-treesitter.configs'.setup {
      indent = {
        enable = true
      }
    }
    ]]
}

