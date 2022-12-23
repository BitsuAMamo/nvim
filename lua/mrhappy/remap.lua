local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set("n", "<leader>pv", vim.cmd.Ex)

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

-- Formatting
--keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
keymap.set("n", "<leader>y", "\"+y")
keymap.set("v", "<leader>y", "\"+y")
keymap.set("n", "<leader>Y", "\"+Y")

keymap.set("n", "<leader>d", "\"_d")
keymap.set("v", "<leader>d", "\"_d")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")


--Auto Saves
keymap.set("n", "<leader>ass", ":ASToggle<CR>")


-- Window Navigation
keymap.set("n", "<M-h>", "<C-w>h")
keymap.set("n", "<M-j>", "<C-w>j")
keymap.set("n", "<M-k>", "<C-w>k")
keymap.set("n", "<M-l>", "<C-w>l")
