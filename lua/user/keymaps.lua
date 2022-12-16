vim.g.mapleader = " "


local keymap = vim.keymap

-- General keymaps

keymap.set("i", "jj", "<ESC>")
keymap.set("i", "kk", "<ESC>")
keymap.set("n", "x", '"_x')

-- Window split
keymap.set("n", "<leader>sv", "<C-w>v") -- vertical split
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=") -- equal split
keymap.set("n", "<leader>sx", ":close<CR>") -- close split


-- Tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab 
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab 
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab 


-- Plugin Keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- Formatting
keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
