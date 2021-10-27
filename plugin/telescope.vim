"lua require("config")
"
"" Project Wide search of a word
"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
"nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
"nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>
"nnoremap <Leader>ff :lua require('telescope.builtin').file_browser()<CR>
"
"" Seach word cursor is on
"nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
"nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
"nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
"nnoremap <leader>df :lua require('config.telescope').search_dotfiles()<CR>
"nnoremap <leader>gb :lua require('config.telescope').git_branches()<CR>
"nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
"nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
"
"nnoremap <leader>pr :Telescope projects<CR>
