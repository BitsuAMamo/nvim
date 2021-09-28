call plug#begin('~/AppData/Local/data-nvim/plugged')
    " LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    " LSP Completion
    Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
    Plug 'hrsh7th/cmp-nvim-lsp' " LSP source for nvim-cmp
    Plug 'saadparwaiz1/cmp_luasnip' " Snippets source for nvim-cmp
    Plug 'L3MON4D3/LuaSnip'

    " Tree Sitter (Syntax highlighting)
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    " Color Theme
    Plug 'gruvbox-community/gruvbox'
    " Undo Tree
    Plug 'mbbill/undotree'
    " Telescope and Requirments
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzy-native.nvim'

    " Devicons
    Plug 'kyazdani42/nvim-web-devicons'

    " Self Plugin
    Plug 'BitsuMamo/cheat-sh-nvim'
call plug#end()

lua require("config")

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
tnoremap jj <Esc>
tnoremap kk <Esc>

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
