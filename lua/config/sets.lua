vim.cmd[[
    set guicursor=
    set relativenumber
    set nohlsearch
    set hidden
    set noerrorbells
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    set expandtab
    set smartindent
    set smartcase
    set nu
    set nowrap
    set noswapfile
    set nobackup
    set undodir=~\AppData\Local\data-nvim\undodir
    set undofile
    set incsearch
    set termguicolors
    set scrolloff=15
    set noshowmode
    set signcolumn=yes
    set isfname+=@-@

    " More space for displaying messages
    set cmdheight=1

    " Longer update time more delays
    set updatetime=50

    " Don't pass messages to |ins-completion-menu|
    set shortmess+=c

    set colorcolumn=80
    set mouse=a

    "syntax on
    "syntax enable

    " TODO: Don't want it auto enabled
    " Tree sitter Folding
    "set foldmethod=expr
    "set foldexpr=nvim_treesitter#foldexpr()



    " General Mappings
    let mapleader = " "

    " Copy to ClipBoard
    nnoremap <leader>y "+y
    vnoremap <leader>y "+y
    nnoremap <leader>Y gg"+yG
    nnoremap <leader>n :lua require('cheat-sh-nvim').cheatSheetCursor()<CR>
    nnoremap <leader>c :lua require('cheat-sh-nvim').cheatSheetCommand(vim.fn.input("Cheat Sheat> "))<CR>

    " Undotree
    nnoremap <leader>u :UndotreeShow<CR>

    " Remap ESC for inset and terminal
    inoremap jj <Esc>
    inoremap kk <Esc>
    tnoremap jj <Esc> <C-\><C-n>
    tnoremap kk <Esc> <C-\><C-n>

    " Better tab
    vnoremap < <gv
    vnoremap > >gv

    " Window Navigation
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>

    " Window Resize
    nnoremap <silent> <M-j> :resize -2<CR>
    nnoremap <silent> <M-k> :resize +2<CR>
    nnoremap <silent> <M-h> :vertical resize -2<CR>
    nnoremap <silent> <M-l> :vertical resize +2<CR>

    " Simple Functions
    fun! TrimWhiteSpace()
        let l:save = winsaveview()
        keeppatterns %s/\s\+$//e
        call winrestview(l:save)
    endfun

    augroup WhiteSpaceTrimmer
        autocmd!
        autocmd BufWritePre * :call TrimWhiteSpace()
    augroup END

    augroup highlight_yank
        autocmd!
        autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})
    augroup END
]]