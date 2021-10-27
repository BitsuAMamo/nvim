--TODO: Change this into lua
vim.cmd[[
    " Telescope Keys
    " Project Wide search of a word
    nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
    nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
    nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
    nnoremap <Leader>ff :lua require('telescope.builtin').file_browser()<CR>
    
    " Seach word cursor is on
    nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
    nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
    nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
    nnoremap <leader>df :lua require('config.telescope').search_dotfiles()<CR>
    nnoremap <leader>gb :lua require('config.telescope').git_branches()<CR>
    nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
    nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
    
    "nnoremap <leader>pr :Telescope projects<CR>

    " LSP Keys

    "nmap <leader>rn :lua vim.lsp.buf.rename()<CR>

    " Use `[g` and `]g` to navigate diagnostics
    " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
    nmap <silent> [g :lua vim.lsp.diagnostic.goto_prev()<CR>
    nmap <silent> ]g :lua vim.lsp.diagnostic.goto_next()<CR>

    " GoTo code navigation.
    nmap <silent> K :lua vim.lsp.buf.hover()<CR>
    nmap <silent> <leader>gd :lua vim.lsp.buf.definition()<CR>
    nmap <silent> <leader>gD :lua vim.lsp.buf.declaration()<CR>
    nmap <silent> <leader>gi :lua vim.lsp.buf.implementation()<CR>
    nmap <silent> <leader>ca :lua vim.lsp.buf.code_action()<CR>
    nmap <silent> <leader>D :lua vim.lsp.buf.type_definition()<CR>
    nmap <silent> <C-k> :lua vim.lsp.buf.signature_help()<CR>
    nmap <silent> <leader>gr :lua vim.lsp.buf.references()<CR>
    nmap <silent> <leader>e :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
    
    " Formatting
    nmap <leader>f :lua vim.lsp.buf.formatting()<CR>

]]